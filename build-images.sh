#!/bin/bash

cd med-ai-model
chmod +x ./build.sh
./build.sh

cd ..
cd med-ai-cxr-classifier
chmod +x ./build.sh
./build.sh

cd ..
cd med-ai-model-ptx
chmod +x ./build.sh
./build.sh
