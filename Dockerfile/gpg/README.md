# GPG

This is an unofficial image for [GNU Privacy Guard (GPG)](https://gnupg.org/), installed on Alpine Linux, made available as `dockerizedtools/gpg` on [Docker Hub](https://hub.docker.com/r/dockerizedtools/gpg).

Built from the Dockerfile at https://github.com/jbergknoff/dockerized-tools/blob/master/Dockerfile/gpg/Dockerfile

## Available tags

* `2.2.20`

## Usage

```sh
$ alias gpg='docker run -it --rm -u $(id -u):$(id -g) -e HOME -v "$HOME":"$HOME" -v "$(pwd)":"$(pwd)" -w "$(pwd)" dockerizedtools/gpg:<version>'
$ gpg --gen-key
...
$ echo hello world | gpg --encrypt
...
```
