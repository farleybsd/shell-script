#!/usr/bin/env bash
echo "Teste"
NOME="Farley De Souza Rufino"
NUMERO_1=24
NUMERO_2=45
TOTAL=$(($NUMERO_1+$NUMERO_2)) #Caculo $(())
echo $NOME
echo $TOTAL
SAIDA_CAT=$(cat /etc/passwd | grep farley) # Comonado usar $()
echo $SAIDA_CAT

echo "----------------------------------------------------------------"
echo "Parametro 1: $1"
echo "Parametro 2: $2"
echo "Todos os parametros: $*"
echo "Total de Parametros: $#"
echo "Saida do ultimo Comando: $?" #0 nao deu erro 1 deu erro
echo "PID: $$"
echo "Buscar nome do script que estamos execultabdo $0"
