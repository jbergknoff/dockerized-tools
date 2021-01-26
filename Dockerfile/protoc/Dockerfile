FROM golang:1.15 AS builder
ARG PROTOC_TAG
ARG PROTOC_GEN_GO_TAG
ARG PROTOC_GEN_GO_GRPC_TAG

RUN apt-get update && apt-get install -y autoconf libtool unzip
WORKDIR /src/protobuf
RUN git clone https://github.com/protocolbuffers/protobuf . && git checkout $PROTOC_TAG

# --disable-shared has it statically link libprotoc and libprotobuf
RUN ./autogen.sh && ./configure --disable-shared --prefix /usr
RUN make -j 3

RUN make install

# TODO: Once Go 1.16 is out of beta, use the newly supported `go install ...@...`
#   cf. https://stackoverflow.com/a/64800215/349427
RUN go mod init dummy_module # Required to `go get` with a version specified
RUN go get github.com/golang/protobuf/protoc-gen-go@$PROTOC_GEN_GO_TAG
RUN go get google.golang.org/grpc/cmd/protoc-gen-go-grpc@$PROTOC_GEN_GO_GRPC_TAG
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc

# -------------

FROM debian:bullseye-20210111-slim
COPY --from=builder /usr/bin/protoc /usr/bin
COPY --from=builder /go/bin/protoc-gen-go /usr/bin
COPY --from=builder /go/bin/protoc-gen-go-grpc /usr/bin
ENTRYPOINT ["protoc"]
