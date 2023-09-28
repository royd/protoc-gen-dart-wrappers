package main

import (
	"fmt"
	"log"
	"os"
	"os/exec"
	"path"

	"example.com/protoc-gen-dart-wrappers/pkg/generate"
	"google.golang.org/protobuf/compiler/protogen"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/pluginpb"
)

func main() {
	log.Print("Start example run")

	dir, err := os.Getwd()
	if err != nil {
		log.Fatal(err)
	}

	var rootDir string
	// current dir is different between run and debug
	if path.Base(dir) == "run_example" {
		rootDir = path.Join(dir, "../../")
	} else {
		rootDir = dir
	}

	err = os.Chdir(path.Join(rootDir, "example/proto"))
	if err != nil {
		log.Fatal(err)
	}

	p, ok := os.LookupEnv("PATH")
	if !ok {
		log.Fatal("couldn't find PATH env var")
	}

	p = fmt.Sprintf("%s:%s/protoc-gen-save-request", p, rootDir)
	err = os.Setenv("PATH", p)
	if err != nil {
		log.Fatal(err)
	}

	err = os.MkdirAll(path.Join(rootDir, "example/bin"), 0755)
	if err != nil {
		log.Fatal(err)
	}

	cmd := exec.Command("protoc", "--proto_path=.", "--save-request_out=../bin", "example.proto")
	out, err := cmd.Output()
	if err != nil {
		exitErr, ok := err.(*exec.ExitError)
		if ok {
			log.Fatal(string(exitErr.Stderr))
		} else {
			log.Fatal(err)
		}
	}

	if len(out) > 0 {
		log.Print(string(out))
	}

	log.Print("Saved CodeGeneratorRequest")

	reqBytes, err := os.ReadFile(path.Join(rootDir, "example/bin/request"))
	req := &pluginpb.CodeGeneratorRequest{}
	err = proto.Unmarshal(reqBytes, req)
	if err != nil {
		log.Fatal(err)
	}

	plugin, err := protogen.Options{}.New(req)
	if err != nil {
		log.Fatal(err)
	}

	err = generate.Generate(plugin)
	if err != nil {
		log.Fatal(err)
	}

	log.Print("Generated finished")
}
