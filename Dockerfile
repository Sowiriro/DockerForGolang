FROM golang:1.12.0-alpine3.9

RUN mkdir /src

COPY /src/main.go /src

CMD ["go", "run", "/src/main.go"]
