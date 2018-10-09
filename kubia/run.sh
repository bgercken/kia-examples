#!/bin/bash
#
docker run -d --name kubia-proxy --rm -p 8080:8080 kubia:arm


read -p "Press <Enter> to tail the logs..."
