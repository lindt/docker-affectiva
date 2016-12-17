#!/bin/bash

handle_failure () {
  echo "Failed"
  cat /failure
}

register_traps () {
  for sig in "$@"
  do
    trap "handle_failure" "$sig"
  done
}

register_traps INT HUP USR1 TERM

set -e
cat - > /tmp/image
/build/video-demo/video-demo --input /tmp/image --data /affdex-sdk/data --draw=0 --numFaces=100 $@ &>/failure
cat /tmp/image.csv
