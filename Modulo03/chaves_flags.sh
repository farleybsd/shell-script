#!/usr/bin/env bash
#
# listaUsuarios.sh - Extrai Usuarios do /etc/passwd
#
# Site:       https://farley.com.br
# Autor:      Farley Rufino
# Manutenção: Farley Rufino
#
# ------------------------------------------------------------------------------------------------------------------------------------------------------------ #
#  Ira Extrair Usuarios do /etc/passwd, havendo a possibilidade de colocar
# em maisculo e em ordem alfabetica
#
#  Exemplos:
#      $ ./listaUsuarios.sh  -s -m
#      Neste exemplo ficara em maiusculo e em ordem alfabetica .
# ------------------------------------------------------------------------------------------------------------------------------------------------------------ #
# Histórico:
#
# v1.0 04/07/2025, Farley:
#     - Adicionado -s, -h & -v
#
# v1.1 04/07/2025, Farley:
#     - Trocamos IF pelo CASE
#     - Adicionamos basename
#
# v1.2 04/07/2025, Farley:
#     - Adicionado -m
#     - Adicionado 2 flags
#
# v1.3 04/07/2025, Farley:
#     - Adicionado while com shift e teste de variável
#     - Adicionado 2 flags
# ------------------------------- VARIÁVEIS------------------------------------------------------------------------------------------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
   $(basename $0) - [OPCOES]

     -h - Menu De Ajuda
     -v - Versao
     -s - Ordernar A Saida
     -m - Coloca Tudo maisculo
"
VERSAO="V1.0"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0
# ------------------------------- EXECUÇÃO---------------------------------------------------------------------------------------------------------------------- #
while test -n "$1"
do
  case "$1" in
    -h) echo "$MENSAGEM_USO" && exit 0                       ;;
    -v) echo "$VERSAO" && exit 0                             ;;
    -s) CHAVE_ORDENA=1                                       ;;
    -m) CHAVE_MAIUSCULO=1                                    ;;
     *) echo "Opcao invalida, valide usando o -h." && exit 1 ;;
  esac
  shift
done
[ $CHAVE_ORDENA -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | sort)
[ $CHAVE_MAIUSCULO -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])

echo "$USUARIOS"
# ---------------------------------------------------------------------------------------------------------------------------------------------------------------#
