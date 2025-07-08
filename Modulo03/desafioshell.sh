#!/usr/bin/env bash
# Nome base dos arquivos
NOME_BASE="Farley"
# Quantos arquivos criar
TOTAL=25
# Comando em variável
COMANDO="touch"
# Criação dos arquivos
for ((i=1; i<=TOTAL; i++)); do
    $COMANDO "${NOME_BASE}_${i}"
done
# Exibe os arquivos criados
ls -lh ${NOME_BASE}_*
