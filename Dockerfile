FROM golang:1.12.0-alpine3.9

RUN mkdir /src

COPY /src/main.go /src

RUN apk update && apk add git

CMD ["go", "run", "/src/main.go"]
