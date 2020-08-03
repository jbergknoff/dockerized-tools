FROM alpine:3.12
ARG PACKAGE_VERSION
RUN apk add --no-cache gnupg==$PACKAGE_VERSION
ENTRYPOINT ["gpg"]
