#!/bin/bash

docker-compose down
docker-compose -f med-ai-runner/docker-compose.yml -f med-ai-server/docker-compose.yml -f med-ai-ui/docker-compose.yml down
