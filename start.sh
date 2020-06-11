#!/bin/bash

docker-compose up -d --build
cd med-ai-runner 
docker-compose up -d --build
cd ../med-ai-server
docker-compose up -d --build
cd ../med-ai-ui
docker-compose up -d --build
cd ..
