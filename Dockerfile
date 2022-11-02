FROM golang:latest

RUN go install github.com/beego/bee/v2@latest

ENV GOPROXY=https://goproxy.cn,direct
ENV GO111MODULE=on
ENV APP_HOME ~/app/beego-docker

RUN mkdir -p "$APP_HOME"

WORKDIR "$APP_HOME"

EXPOSE 8080

CMD ["bee","run"]