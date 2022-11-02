FROM golang:latest

ENV GOPROXY=https://goproxy.cn,direct
ENV GO111MODULE=on

RUN go install github.com/beego/bee/v2@latest

ENV APP_HOME /go/src/beego-docker/
RUN mkdir -p "$APP_HOME"

WORKDIR "$APP_HOME"


#RUN go build -o docker-beego


EXPOSE 8080

CMD ["bee", "run"]