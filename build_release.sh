#!/bin/bash
# Ask for release information

read -p 'Release: ' RELEASE

UI_IMAGE='tclarke104/med-ai-ui'
RUNNER_IMAGE='tclarke104/med-ai-runner'
SERVER_IMAGE='tclarke104/med-ai-server'
LOGSTASH_IMAGE='tclarke104/logstash'
KIBANA_IMAGE='tclarke104/kibana'
ELASTICSEARCH_IMAGE='tclarke104/elasticsearch'

echo "BUILDING RELEASE ${RELEASE}"

cd med-ai-ui
docker build -t "$UI_IMAGE:$RELEASE" .
docker push "$UI_IMAGE:$RELEASE"

cd ../med-ai-server
docker build -t "$SERVER_IMAGE:$RELEASE" .
docker push "$SERVER_IMAGE:$RELEASE"

cd ../med-ai-runner
docker build -t "$RUNNER_IMAGE:$RELEASE" .
docker push "$RUNNER_IMAGE:$RELEASE"

cd ../med-ai-logging/elasticsearch
docker build -t "$ELASTICSEARCH_IMAGE:$RELEASE" .
docker push "$ELASTICSEARCH_IMAGE:$RELEASE"

cd ../logstash
docker build -t "$LOGSTASH_IMAGE:$RELEASE" .
docker push "$LOGSTASH_IMAGE:$RELEASE"

cd ../kibana
docker build -t "$KIBANA_IMAGE:$RELEASE" .
docker push "$KIBANA_IMAGE:$RELEASE"

cd ..