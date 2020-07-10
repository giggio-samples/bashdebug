#!/usr/bin/env bash

set -euo pipefail

if ls
then
  echo 0
fi

if ls; then
  echo 1
fi

if ls; then echo 1.1; fi
if ! ls foo; then echo 1.2; fi

a=0
if [ "$a" == "0" ]; then
  echo 2
fi

if [ $a == 0 ]; then
  echo 3
fi

if test $a == 0; then
  echo 4
fi

if test $a == 1; then
  echo 4.1
else
  echo 4.2
fi

if test $a == 1; then
  echo 4.3
elif [ "$a" == "0" ]; then
  echo 4.4
else
  echo 4.5
fi

b=def
if [[ "abcdefg" =~ "$b" ]]; then
  echo 5
fi

if [ "$(ls naoexiste 2> /dev/null)" == "" ]; then
  echo 6
fi

if [ "`ls flow.sh 2> /dev/null`" == "flow.sh" ]; then
  echo 7
fi

if [ -f flow.sh ]; then
  echo 7.1
fi

if ! [ -d flow.sh ]; then
  echo 7.2
fi

if [ -e flow.sh ]; then
  echo 7.3
fi

if [ -e `pwd` ]; then
  echo 7.4
fi

boolean=true
if $boolean; then
  echo 8
fi

boolean=false
if ! $boolean; then
  echo 9
fi

if ! $boolean && true; then
  echo 10
fi

if ! $boolean || false; then
  echo 11
fi

for i in {1..3}; do
  echo hello $i
  #sleep 1
done

i=100
while [ $i -lt 103 ]; do
  printf $((++i)),
done
