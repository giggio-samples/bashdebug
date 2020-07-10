#!/bin/bash

function f3() {
    local text="Hello"
    echo "$text $1"
}
function f2() {
    f3 "World"
}
function f1() {
    f2 "a1" "a2" "a3"
}

nome=giovanni
f1

echo "Ending Script $0"