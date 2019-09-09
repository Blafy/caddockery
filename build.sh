#!/bin/sh

export GO111MODULE=on

CADDY_VER="1.0.3"
CUR_PATH=$(pwd)

go get github.com/caddyserver/caddy/

cd $GOPATH/pkg/mod/github.com/caddyserver/caddy@v$CADDY_VER

sed -i 's/var EnableTelemetry = true/var EnableTelemetry = false/g' caddy/caddymain/run.go

echo 'Verifying parameter ...'

cat caddy/caddymain/run.go | grep "EnableTelemetry"

CGO_ENABLED=0 go build -a -o caddockery caddy/main.go

cp caddockery $CUR_PATH/
