#!/bin/bash

# status of branch in short format
branch=$(git rev-parse --abbrev-ref HEAD)
# we only take the first 6 chars
branch2=${branch:0:6}
# get commit (7 chars plus optional ~ for dirty)
version=$(git describe --always --abbrev=7 --dirty=~)
# get date plus hour
datetime=$(date +%Y%m%d.%H)

stringout="${datetime}-${branch2}-${version}"
echo $stringout

