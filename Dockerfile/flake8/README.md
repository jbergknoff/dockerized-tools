# flake8

This is an unofficial image for the Python linter [flake8](https://gitlab.com/pycqa/flake8), made available as `dockerizedtools/flake8` on [Docker Hub](https://hub.docker.com/r/dockerizedtools/flake8).

Built from the Dockerfile at https://github.com/jbergknoff/dockerized-tools/blob/master/Dockerfile/flake8/Dockerfile

## Available tags

* `3.8.3`

## Usage

```sh
$ alias flake8='docker run --rm -v "$(pwd)":"$(pwd)" -w "$(pwd)" dockerizedtools/flake8:<version>'
$ flake8 <path>
some_file.py:75:15: F821 undefined name 'x'
```
