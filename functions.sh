#!/bin/bash

function f1() {
    local text1="1"
    text2="1"
}
function f2() {
    local text1="2"
    text2="2"
}
f1
f2
echo text1:  $text1
echo text2:  $text2

export umaenvvar=1
./sourced.sh
echo uma env var: $umaenvvar
source ./sourced.sh
echo uma env var: $umaenvvar