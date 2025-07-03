#!/usr/bin/env bash

echo "Informe um número: $1"

if [[ $1 -gt 10 ]]
then
    echo "Nome do Script: $0"
    echo "PID: $$"
fi
