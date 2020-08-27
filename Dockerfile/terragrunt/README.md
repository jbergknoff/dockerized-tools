# Terraform + Terragrunt

This is an unofficial image for [Terraform](https://www.terraform.io/), with the wrapper [Terragrunt](https://github.com/gruntwork-io/terragrunt), made available as `dockerizedtools/terragrunt` on [Docker Hub](https://hub.docker.com/r/dockerizedtools/terragrunt).

Built from the Dockerfile at https://github.com/jbergknoff/dockerized-tools/blob/master/Dockerfile/terragrunt/Dockerfile

## Available tags

* `0.23.36-tf-0.13.1`
* `0.23.33-tf-0.13.0`
* `0.23.32-tf-0.13.0-rc1`
* `0.23.36-tf-0.12.29`
* `0.18.7-tf-0.11.14`

## Usage

```sh
$ alias terragrunt='docker run --rm -v "$(pwd)":"$(pwd)" -w "$(pwd)" -e AWS_... dockerizedtools/terragrunt:<version>'
$ terragrunt apply
```
