#!/bin/sh

docker build . -t q-server:latest
docker-compose up -d
