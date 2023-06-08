#!/bin/bash

docker build -t hello:server .
docker run -d -p 80:81 -v $(pwd)/nginx/nginx.conf:/etc/nginx/nginx.conf --name newttena hello:server