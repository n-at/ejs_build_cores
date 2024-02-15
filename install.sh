#!/bin/bash

cd /workspaces

git clone "https://github.com/EmulatorJS/build" build
cd build

chmod +x build_env.sh build.sh

./build_env.sh

source "/workspaces/build/.emsdk/emsdk_env.sh"

./build.sh

cd "/workspaces/build/compile/EmulatorJS/data/cores"
tar -cvzf "/build/cores_$(date +"%Y_%m_%d_%H_%M_%S").tar.gz" ./*
