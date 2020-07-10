#!/bin/bash

echo uma env var do scripts sourced: $umaenvvar
export umaenvvar=2
echo este script: "${BASH_SOURCE[0]}"
echo script de origem: "$0"