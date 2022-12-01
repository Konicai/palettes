#!/usr/bin/env bash

SERVER="https://minecraft.azureedge.net/bin-linux/bedrock-server-1.19.50.02.zip"

rm -rf bds
mkdir bds
cd bds
curl $SERVER -o serverpack.zip
unzip serverpack.zip
cd ..

rm -rf bds-modding-devkit
git clone https://github.com/pmmp/bds-modding-devkit
cd bds-modding-devkit
git submodule update --init
./scripts/setup ~/bds
