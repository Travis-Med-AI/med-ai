#!/bin/bash

cd med-ai-runner
chmod +x ./build.sh
./build.sh

cd ..
cd med-ai-ui
chmod +x ./build.sh
./build.sh

cd ..
cd med-ai-server
chmod +x ./build.sh
./build.sh


cd ..
chmod +x ./build.sh
./build.sh