FROM golang:latest

ENV GOPROXY=https://goproxy.cn,direct
ENV GO111MODULE=on

RUN go install github.com/beego/bee/v2@latest

ENV APP_HOME /go/src/

RUN mkdir -p "$APP_HOME"

WORKDIR "$APP_HOME"

COPY * ./
RUN go mod tidy
#RUN go build -o docker-beego


EXPOSE 8080

CMD ["bee", "run"]