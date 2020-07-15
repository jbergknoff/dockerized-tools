FROM alpine:3.12
ARG PACKAGE_VERSION
RUN apk add --no-cache openssl==$PACKAGE_VERSION ca-certificates
ENTRYPOINT ["openssl"]
