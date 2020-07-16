# black

This is an unofficial image for the Python formatter [black](https://github.com/psf/black), made available as `dockerizedtools/black` on [Docker Hub](https://hub.docker.com/r/dockerizedtools/black).

Built from the Dockerfile at https://github.com/jbergknoff/dockerized-tools/blob/master/Dockerfile/black/Dockerfile

## Available tags

* `19.10b0`

## Usage

```sh
$ alias black='docker run --rm -v "$(pwd)":"$(pwd)" -w "$(pwd)" dockerizedtools/black:<version>'
$ black --check .
All done! ✨ 🍰 ✨
6 files would be left unchanged.
```
