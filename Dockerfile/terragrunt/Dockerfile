ARG TERRAFORM_VERSION
FROM hashicorp/terraform:$TERRAFORM_VERSION
ARG TERRAGRUNT_VERSION
RUN wget -O /bin/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v$TERRAGRUNT_VERSION/terragrunt_linux_amd64 \
  && chmod +x /bin/terragrunt

ENTRYPOINT ["terragrunt"]
