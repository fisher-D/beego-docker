FROM golang:latest

RUN go install github.com/beego/bee/v2@latest

ENV GO111MODULE=on
ENV GOFLAGS=-mod=vender

ENV APP_HOME ~/app/beego-docker
RUN mkdir -p "$APP_HOME"
WORKDIR "$APP_HOME"

EXPOSE 8080

CMD ["bee","run"]

docker build
