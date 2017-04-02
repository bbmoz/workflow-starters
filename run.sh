#!/bin/bash

set -e

update () {
  set -x
  git submodule update --remote --merge
}

usage () {
cat <<EOF
  Usage:
    update|u      update submodules
EOF
}

case $1 in
  update|u)   update    ;;
  *)          usage     ;;
esac
