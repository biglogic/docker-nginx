FROM golang:latest
COPY goapi-elasticsearch ./goapi-elasticsearch
WORKDIR /go/goapi-elasticsearch
RUN go get -v -d github.com/gorilla/mux &&/ go get -v -d gopkg.in/yaml.v2

