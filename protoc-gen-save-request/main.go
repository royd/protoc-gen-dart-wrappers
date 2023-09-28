package main

import (
	"log"

	"google.golang.org/protobuf/compiler/protogen"
	"google.golang.org/protobuf/encoding/protojson"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/pluginpb"
)

func main() {
	log.Println("Saving CodeGeneratorRequest")

	protogen.Options{}.Run(generate)
}

func generate(plugin *protogen.Plugin) error {
	plugin.SupportedFeatures = uint64(pluginpb.CodeGeneratorResponse_FEATURE_PROTO3_OPTIONAL)
	json, err := protojson.MarshalOptions{
		Indent: "    ",
	}.Marshal(plugin.Request)
	if err != nil {
		return err
	}

	binary, err := proto.Marshal(plugin.Request)
	if err != nil {
		return err
	}

	jsonFile := plugin.NewGeneratedFile("request.json", protogen.GoImportPath(""))
	_, err = jsonFile.Write(json)
	if err != nil {
		return err
	}

	binaryFile := plugin.NewGeneratedFile("request", protogen.GoImportPath(""))
	_, err = binaryFile.Write(binary)
	if err != nil {
		return err
	}

	return nil
}
