FROM golang:latest

RUN mkdir /build 

WORKDIR /build 

CMD ["/bin/bash"]
