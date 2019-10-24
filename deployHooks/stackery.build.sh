#!/bin/sh

set -e
mkdir -p .aws-sam/build/src/

cp .stackery/template.yaml .aws-sam/build/template.yaml

( cd src/goFunction && GOBIN=$PWD GOPATH=$PWD make )

rm -rf .aws-sam/build/src/goFunction
cp -r src/goFunction .aws-sam/build/src/goFunction
  