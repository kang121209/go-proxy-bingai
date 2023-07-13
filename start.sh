#!/bin/bash
item="go-bing"
port=8083

git pull

netstat -ntpl|grep :${port}|awk '{print $7}'|awk -F'/' '{print $1}'|xargs kill -9 
export PORT=${port} && nohup go run main.go > nohup.log &