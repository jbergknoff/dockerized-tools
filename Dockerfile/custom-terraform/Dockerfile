FROM golang:1.15-buster AS builder-terraform
ARG TERRAFORM_BASE_REFERENCE
WORKDIR /code/hashicorp/terraform
RUN git clone https://github.com/hashicorp/terraform . && git checkout $TERRAFORM_BASE_REFERENCE

COPY apply-patches .
COPY patches/terraform/ patches/
RUN ./apply-patches

# Stripping debug symbols for smaller binary:
# 	`-ldflags '-s -w'`
# Output lives at /go/bin/terraform
RUN go install -a -ldflags '-s -w' .

# ------------

FROM golang:1.15-buster AS builder-terraform-provider-aws
ARG AWS_PROVIDER_BASE_VERSION
WORKDIR /code/terraform-provider-aws
RUN git clone https://github.com/terraform-providers/terraform-provider-aws . && git checkout v$AWS_PROVIDER_BASE_VERSION

COPY apply-patches .
COPY patches/terraform-provider-aws/ patches/
RUN ./apply-patches

# Stripping debug symbols for smaller binary:
# 	`-ldflags '-s -w'`
# Output lives at /go/bin/terraform-provider-aws
RUN go install -ldflags '-s -w'

# ------------

FROM debian:buster-20201012-slim
ARG AWS_PROVIDER_BASE_VERSION

# For pulling Terraform modules from git repositories
RUN apt-get update && apt-get install -y git && apt-get clean

COPY --from=builder-terraform /go/bin/terraform /bin/terraform
ENTRYPOINT ["terraform"]

# Note! This is only correct for TF >=0.13.
#
# Put the bundled provider where Terraform will look for it, following
# 	https://gist.github.com/mildwonkey/85df0f0605880a0f08b6f05c15092bd7
#
# Note that there are some restrictions on the provider version used in the path. A `v` prefix is not allowed
# (e.g. `/v2.70.0/`) and neither is a custom suffix (e.g. `/2.70.0-custom/`. In both cases, Terraform will
# ignore our provider and try to install from the public registry.
ENV AWS_PROVIDER_PATH=/usr/share/terraform/plugins/registry.terraform.io/hashicorp/aws/$AWS_PROVIDER_BASE_VERSION/linux_amd64/terraform-provider-aws
COPY --from=builder-terraform-provider-aws /go/bin/terraform-provider-aws $AWS_PROVIDER_PATH
