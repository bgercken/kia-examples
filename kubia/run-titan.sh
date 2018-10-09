#!/bin/bash
#
docker run -d --name kubia-proxy --rm -p 8080:8080 titan/kubia

sleep 2

docker logs -f kubia-proxy
