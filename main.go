package main

import (
	_ "beego-docker/routers"
	beego "github.com/beego/beego/v2/server/web"
)

func main() {
	beego.Run()
}
