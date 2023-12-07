#!/usr/bin/env bash
mvn clean package && docker build -t ivonet/project4 .
docker rm -f project4 || true && docker run -d -p 8080:8080 -p 9990:9990 --name project4 ivonet/project4
