#!/bin/bash
item="go-bing"
port=8083

git pull

ps -ef|grep ":${port}"|grep -v 'grep'|awk '{print $2}'|xargs kill -9
export PORT=${port} && nohup go run main.go > nohup.log &