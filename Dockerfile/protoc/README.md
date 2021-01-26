# protoc

This is an unofficial image for the protobuf compiler [protoc](https://github.com/protocolbuffers/protobuf), made available as `dockerizedtools/protoc` on [Docker Hub](https://hub.docker.com/r/dockerizedtools/protoc).

This image also contains the `protoc-gen-go` and `protoc-gen-go-grpc` plugins for use with gRPC in the Go language.

Built from the Dockerfile at https://github.com/jbergknoff/dockerized-tools/blob/master/Dockerfile/protoc/Dockerfile

## Usage

```sh
$ alias protoc='docker run --rm -v "$(pwd)":"$(pwd)" -w "$(pwd)" dockerizedtools/protoc:<version>'
$ protoc stuff.proto
```
