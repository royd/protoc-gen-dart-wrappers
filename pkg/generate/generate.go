package generate

import (
	"errors"
	"strings"
	"unicode"
	"unicode/utf8"

	"golang.org/x/text/cases"
	"golang.org/x/text/language"
	"google.golang.org/protobuf/compiler/protogen"
	"google.golang.org/protobuf/reflect/protoreflect"
	"google.golang.org/protobuf/types/pluginpb"
)

func Generate(plugin *protogen.Plugin) error {
	plugin.SupportedFeatures = uint64(pluginpb.CodeGeneratorResponse_FEATURE_PROTO3_OPTIONAL)

	for _, file := range plugin.Files {
		if !file.Generate {
			continue
		}

		err := generateFile(plugin, file)
		if err != nil {
			return err
		}
	}

	return nil
}

func generateFile(p *protogen.Plugin, f *protogen.File) error {
	// Skip generating file if there is no message.
	if len(f.Messages) == 0 {
		return nil
	}

	filePrefix := f.GeneratedFilenamePrefix

	g := p.NewGeneratedFile(filePrefix+".g.dart", f.GoImportPath)
	g.P("// Code generated by protoc-gen-dart-wrappers. DO NOT EDIT.")
	g.P()

	// begin imports
	g.P("import 'dart:async';")
	g.P("")
	g.P("import 'package:fixnum/fixnum.dart' as fixnum;")
	g.P("import '", filePrefix, ".pb.dart' as pb;")
	g.P("import '", filePrefix, ".pbgrpc.dart' as pbgrpc;")
	g.P("import 'package:grpc/grpc.dart' as grpc;")
	g.P("")
	// end imports

	for _, m := range f.Messages {
		className := toClassName(m)
		messageName := toMessageName(m)

		g.P("class ", className, " {")

		// begin constructor
		if len(m.Fields) != 0 {
			g.P("  ", className, "({")
		} else {
			g.P("  ", className, "(")
		}

		for _, f := range m.Fields {
			fieldName := toFieldName(f)
			if isRequired(f) {
				g.P("    ", "required this.", fieldName, ",")
			} else {
				g.P("    ", "this.", fieldName, ",")
			}
		}

		if len(m.Fields) != 0 {
			g.P("  });")
		} else {
			g.P("  );")
		}
		g.P("")
		// end constructor

		// begin factory
		g.P("  factory ", className, ".fromProto(pb.", messageName, " msg) {")
		for _, f := range m.Fields {
			fieldName := toFieldName(f)
			if isRequired(f) {
				g.P("    if (!msg.has", f.GoName, "()) {")
				g.P("      throw ArgumentError.notNull('", fieldName, "');")
				g.P("    }")
				g.P("")
			}
		}

		g.P("    return ", className, "(")
		for _, f := range m.Fields {
			fieldName := toFieldName(f)
			if f.Message != nil {
				g.P("      ", fieldName, ": ", toClassName(f.Message), ".fromProto(msg.", fieldName, "),")
			} else if f.Enum != nil {
				g.P("      ", fieldName, ": ", toEnumName(f.Enum), ".fromProto(msg.", fieldName, "),")
			} else {
				g.P("      ", fieldName, ": msg.", fieldName, ",")
			}
		}
		g.P("    );")
		g.P("  }")
		g.P("")
		// end factory

		// begin fields
		for _, f := range m.Fields {
			t, err := dartType(f)
			if err != nil {
				return err
			}

			if isRequired(f) {
				g.P("  final ", t, " ", f.Desc.Name(), ";")
			} else {
				g.P("  final ", t, "? ", f.Desc.Name(), ";")
			}

		}
		g.P("")
		// end fields

		// begin toProto
		g.P("  pb.", messageName, " toProto() {")
		g.P("    return pb.", messageName, "(")
		for _, f := range m.Fields {
			fieldName := toFieldName(f)
			if f.Message != nil || f.Enum != nil {
				g.P("      ", fieldName, ": ", fieldName, ".toProto(),")
			} else {
				g.P("      ", fieldName, ": ", fieldName, ",")
			}
		}
		g.P("    );")
		g.P("  }")
		// end toProto

		g.P("}")
		g.P("")
	}

	// begin enums
	for _, e := range f.Enums {
		name := toEnumName(e)
		g.P("enum ", name, " {")
		for i, v := range e.Values {
			isLast := i == len(e.Values)-1
			if !isLast {
				g.P("  ", toEnumValue(v), ",")
			} else {
				g.P("  ", toEnumValue(v), ";")
			}
		}
		g.P("")

		// begin factory
		g.P("  factory ", name, ".fromProto(pb.", name, " en) =>")
		g.P("    ", name, ".values.firstWhere((e) => e.index == en.value);")
		g.P("")
		// end factory

		// begin toProto
		g.P("  pb.", name, " toProto() => pb.", name, ".valueOf(this.index)!;")
		// end toProto
		g.P("}")
	}

	// end enums

	if len(f.Services) != 0 {
		g.P("")
	}

	// begin services
	for _, s := range f.Services {
		serviceName := s.Desc.Name()

		// begin client

		clientName := serviceName + "Client"

		g.P("class ", clientName, " {")
		g.P("  ", clientName, "(")
		g.P("    grpc.ClientChannel channel, {")
		g.P("    grpc.CallOptions? options,")
		g.P("    Iterable<grpc.ClientInterceptor>? interceptors,")
		g.P("  }) : _base = pbgrpc.MsgServiceClient(")
		g.P("          channel,")
		g.P("          options: options,")
		g.P("          interceptors: interceptors,")
		g.P("    );")
		g.P("")
		g.P("  final pbgrpc.", clientName, " _base;")
		g.P("")

		for _, m := range s.Methods {
			methodName := toMethodName(m)
			inputClassName := toClassName(m.Input)
			outputClassName := toClassName(m.Output)

			if m.Desc.IsStreamingServer() {
				g.P("  Stream<", outputClassName, "> ", methodName, "(", inputClassName, " request, {grpc.CallOptions? options}) {")
				g.P("    final response = _base.", methodName, "(")
				g.P("      request.toProto(),")
				g.P("    );")
				g.P("")
				writeFromPbStreamTransformer(g, m, "    ")
				g.P("")
				g.P("    return response.transform(transformer);")
				g.P("  }")
			} else {
				g.P("  Future<", outputClassName, "> ", methodName, "(", inputClassName, " request, {grpc.CallOptions? options}) async {")
				g.P("    final response = await _base.", methodName, "(")
				g.P("      request.toProto(),")
				g.P("    );")
				g.P("")
				g.P("    return ", outputClassName, ".fromProto(response);")
				g.P("  }")
			}
		}

		g.P("}")
		g.P("")

		// end client

		// begin service

		g.P("abstract class ", serviceName, " {")
		for _, m := range s.Methods {
			methodName := toMethodName(m)
			inputClassName := toClassName(m.Input)
			outputClassName := toClassName(m.Output)

			if m.Desc.IsStreamingServer() {
				g.P("  Stream<", outputClassName, "> ", methodName, "(")
				g.P("    grpc.ServiceCall call,")
				g.P("    ", inputClassName, " request,")
				g.P("  );")
			} else {
				g.P("  Future<", outputClassName, "> ", methodName, "(")
				g.P("    grpc.ServiceCall call,")
				g.P("    ", inputClassName, " request,")
				g.P("  );")
			}
			g.P("")
		}

		g.P("  pbgrpc.", serviceName, "Base toProto() => _", serviceName, "(base: this);")
		g.P("}")

		g.P("")

		g.P("class _", serviceName, " extends pbgrpc.", serviceName, "Base {")
		g.P("  _", serviceName, "({")
		g.P("    required ", serviceName, " base,")
		g.P("  }) : _base = base;")

		g.P("")
		g.P("  final ", serviceName, " _base;")
		g.P("")

		for _, m := range s.Methods {
			methodName := toMethodName(m)
			inputClassName := toClassName(m.Input)
			outputClassName := toClassName(m.Output)

			if m.Desc.IsStreamingServer() {
				g.P("  @override")
				g.P("  Stream<pb.", outputClassName, "> ", methodName, "(")
				g.P("    grpc.ServiceCall call,")
				g.P("    pb.", inputClassName, " request,")
				g.P("  ) {")
				g.P("    final response = _base.", methodName, "(")
				g.P("      call,")
				g.P("      ", inputClassName, ".fromProto(request),")
				g.P("    );")
				g.P("")
				writeToPbStreamTransformer(g, m, "    ")
				g.P("")
				g.P("    return response.transform(transformer);")
				g.P("  }")
			} else {
				g.P("  @override")
				g.P("  Future<pb.", outputClassName, "> ", methodName, "(")
				g.P("    grpc.ServiceCall call,")
				g.P("    pb.", inputClassName, " request,")
				g.P("  ) async {")
				if len(m.Output.Fields) != 0 {
					g.P("    final response = await _base.", methodName, "(")
				} else {
					g.P("    await _base.", methodName, "(")
				}
				g.P("      call,")
				g.P("      ", inputClassName, ".fromProto(request),")
				g.P("     );")
				g.P("")
				g.P("    return response.toProto();")
				g.P("  }")
			}

			g.P("")
		}

		g.P("}")

		// end service
	}

	// end services

	return nil
}

func dartType(f *protogen.Field) (string, error) {
	kind := f.Desc.Kind()

	value := ""
	var err error

	switch kind {
	case protoreflect.DoubleKind:
		value = "double"
	case protoreflect.FloatKind:
		value = "double"
	case protoreflect.Int32Kind:
		value = "int"
	case protoreflect.Uint32Kind:
		value = "int"
	case protoreflect.Sint32Kind:
		value = "int"
	case protoreflect.Fixed32Kind:
		value = "int"
	case protoreflect.Sfixed32Kind:
		value = "int"
	case protoreflect.Int64Kind:
		value = "fixnum.Int64"
	case protoreflect.Uint64Kind:
		value = "fixnum.Int64"
	case protoreflect.Sint64Kind:
		value = "fixnum.Int64"
	case protoreflect.Fixed64Kind:
		value = "fixnum.Int64"
	case protoreflect.Sfixed64Kind:
		value = "fixnum.Int64"
	case protoreflect.BoolKind:
		value = "bool"
	case protoreflect.StringKind:
		value = "String"
	case protoreflect.BytesKind:
		value = "List<int>"
	case protoreflect.MessageKind:
		value = toClassName(f.Message)
	case protoreflect.EnumKind:
		value = toEnumName(f.Enum)
	case protoreflect.GroupKind:
		err = errors.New("unsupported type " + kind.String())
	default:
		err = errors.New("unsupported type " + kind.String())
	}

	return value, err
}

func writeFromPbStreamTransformer(g *protogen.GeneratedFile, m *protogen.Method, indent string) {
	outputClassName := toClassName(m.Output)

	g.P(indent, "final transformer = StreamTransformer.fromHandlers(")
	g.P(indent, "  handleData:")
	g.P(indent, "      (pb.", outputClassName, " data, ", "EventSink<", outputClassName, "> sink) {")
	g.P(indent, "    sink.add(")
	g.P(indent, "      ", outputClassName, ".fromProto(data),")
	g.P(indent, "    );")
	g.P(indent, "  },")
	g.P(indent, ");")
}

func writeToPbStreamTransformer(g *protogen.GeneratedFile, m *protogen.Method, indent string) {
	outputClassName := toClassName(m.Output)

	g.P(indent, "final transformer = StreamTransformer.fromHandlers(")
	g.P(indent, "  handleData:")
	g.P(indent, "      (", outputClassName, " data, ", "EventSink<pb.", outputClassName, "> sink) {")
	g.P(indent, "    sink.add(")
	g.P(indent, "      data.toProto(),")
	g.P(indent, "    );")
	g.P(indent, "  },")
	g.P(indent, ");")
}

func isRequired(f *protogen.Field) bool {
	return !f.Desc.HasOptionalKeyword()
}

func toFieldName(f *protogen.Field) string {
	return string(f.Desc.Name())
}

func toLowerCase(str string) string {
	return strings.ToLower(str)
}

func toTitleCase(str string) string {
	caser := cases.Title(language.English)

	return caser.String(str)
}

func toMethodName(m *protogen.Method) string {
	name := string(m.Desc.Name())

	r, n := utf8.DecodeRuneInString(name)

	return string(unicode.ToLower(r)) + name[n:]
}

func toClassName(m *protogen.Message) string {
	return string(m.Desc.Name())
}

func toMessageName(m *protogen.Message) string {
	return string(m.Desc.Name())
}

func toEnumName(e *protogen.Enum) string {
	return string(e.Desc.Name())
}

func toEnumValue(v *protogen.EnumValue) string {
	return string(v.Desc.Name())
}
