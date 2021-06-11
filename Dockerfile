FROM golang:latest

RUN mkdir /build 

WORKDIR /build 


RUN export GO111MODULE=on

RUN export github.com/Sowiriro/DockerForGolang.git 
RUN cd /build && git clone github.com/Sowiriro/DockerForGolang.git 

RUN cd /build/DockerForGolang/src && go build 

EXPOSE 8080 

ENTRYPOINT [ "fresh" ]