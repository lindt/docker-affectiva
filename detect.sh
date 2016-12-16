#!/bin/bash

set -e
cat - > /tmp/image
/build/video-demo/video-demo --input /tmp/image --data /affdex-sdk/data --draw=0 --numFaces=100 $@ &>/dev/null &&
cat /tmp/image.csv
