#!/bin/bash

for i in src/domain/*; do echo transpiling $i function; (cd $i; npm install; npm run build); done
