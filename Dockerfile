FROM golang:1.12.0-alpine3.9

WORKDIR /DockerForGolang/src

ENV GO111MODULE=on

RUN apk add --no-cache \
        alpine-sdk \
        git \
    && go get github.com/Sowiriro/DockerForGolang \
        go get github.com/pilu/fresh

EXPOSE 8080

CMD ["fresh"]