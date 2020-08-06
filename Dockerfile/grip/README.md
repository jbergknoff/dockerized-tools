# grip

This is an unofficial image for the GitHub Markdown preview tool [grip](https://github.com/joeyespo/grip), made available as `dockerizedtools/grip` on [Docker Hub](https://hub.docker.com/r/dockerizedtools/grip).

Built from the Dockerfile at https://github.com/jbergknoff/dockerized-tools/blob/master/Dockerfile/grip/Dockerfile

## Available tags

* `4.5.2`

## Usage

```sh
$ grip() { docker run --rm -v "$(pwd)":"$(pwd)" -w "$(pwd)" -p 6419:6419 dockerizedtools/grip:4.5.2 "$1" 0.0.0.0; }
$ grip file.md &
$ xdg-open http://localhost:6419
```
