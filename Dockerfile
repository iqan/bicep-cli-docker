FROM alpine:3.17

LABEL Maintainer="Iqan Shaikh"

ARG BICEP_CLI_VERSION=v0.13.1

RUN apk add --update \
    curl \
    build-base \
    icu \
    && rm -rf /var/cache/apk/*

RUN curl -Lo bicep https://github.com/Azure/bicep/releases/download/${BICEP_CLI_VERSION}/bicep-linux-musl-x64

RUN chmod +x ./bicep

RUN mv ./bicep /usr/local/bin/bicep
