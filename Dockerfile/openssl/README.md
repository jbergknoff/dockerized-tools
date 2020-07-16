# OpenSSL

This is an unofficial image for [OpenSSL](https://www.openssl.org/), installed on Alpine Linux, made available as `dockerizedtools/openssl` on [Docker Hub](https://hub.docker.com/r/dockerizedtools/openssl).

Built from the Dockerfile at https://github.com/jbergknoff/dockerized-tools/blob/master/Dockerfile/openssl/Dockerfile

## Available tags

* `1.1.1g`

## Usage

```sh
$ alias openssl='docker run --rm -v "$(pwd)":"$(pwd)" -w "$(pwd)" dockerizedtools/openssl:<version>'
$ openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem ...
Generating a RSA private key
.................................................................................+++++
...................................+++++
writing new private key to 'key.pem'
```
