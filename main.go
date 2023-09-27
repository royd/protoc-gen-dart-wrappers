package main

import (
	"log"

	"example.com/protoc-gen-dart-wrappers/pkg/generate"
	"google.golang.org/protobuf/compiler/protogen"
)

func main() {
	log.Println("Generating Dart wrappers")

	protogen.Options{}.Run(generate.Generate)
}
