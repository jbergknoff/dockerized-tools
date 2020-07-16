# mypy

This is an unofficial image for the Python static type checker [mypy](https://github.com/python/mypy), made available as `dockerizedtools/mypy` on [Docker Hub](https://hub.docker.com/r/dockerizedtools/mypy).

Built from the Dockerfile at https://github.com/jbergknoff/dockerized-tools/blob/master/Dockerfile/mypy/Dockerfile

## Available tags

* `0.782`

## Usage

```sh
$ alias mypy='docker run --rm -v "$(pwd)":"$(pwd)" -w "$(pwd)" dockerizedtools/mypy:<version>'
$ mypy <path>
some_file.py:75: error: Incompatible types in assignment (expression has type "str", variable has type "int")
Found 1 error in 1 file (checked 6 source files)
```
