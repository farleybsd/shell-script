#!/usr/bin/env bash

echo "==== For 1"
for (( i = 0; i < 10; i++ )); do
  echo $i
done

echo "==== For 2 (seq)"
for i in $(seq 10); do
  echo $i
done


echo "==== For 3"
frutas=(
'Laranja',
'Ameixa',
'Abacaxi'
)
for i in "${frutas[@]}"; do
  echo $i
done

echo "==== While"
Contador=0
while [[ Contador -lt ${#frutas[@]} ]]; do
  echo $Contador
  Contador=$(($Contador + 1))
done

for i in $(seq 0 10)
do
[ $(($i % 2)) -eq 0 ] && echo "Número $i é divisível por 2"
done
