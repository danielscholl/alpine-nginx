#!/bin/bash

docker build -t irvui/alpine-nginx:latest .
docker push irvui/alpine-nginx:latest