
ARG GO_VERSION=1.20.3
ARG ALPINE_VERSION=3.17

FROM golang:${GO_VERSION}-alpine${ALPINE_VERSION}

RUN apk add -q --update --progress --no-cache git sudo openssh-client zsh

ARG APPLICATION_VERSION
ENV APPLICATION_VERSION="$APPLICATION_VERSION"


ENV GO111MODULE=on


WORKDIR /go/src/github.com/oath
