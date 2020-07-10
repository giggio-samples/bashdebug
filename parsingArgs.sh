#!/bin/bash

set -euo pipefail

ALL_ARGS=$@
USERNAME=''
VERBOSE=false
while [[ $# -gt 0 ]]; do
  echo argumentos restantes: $#
  key="$1"
  case $key in
    --username|-user|-u)
    USERNAME="$2"
    shift
    shift
    ;;
    --verbose)
    VERBOSE=true
    shift
    ;;
    *)
    shift
    ;;
  esac
done
echo argumentos restantes: $#

echo USERNAME: $USERNAME
echo VERBOSE: $VERBOSE
echo all args: $ALL_ARGS
echo '$@': $@