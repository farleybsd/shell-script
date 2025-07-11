#---------------------------Variaveis-------------------------------------------
#./debug_2.sh -d 1 
CHAVE_DEBUG=0
NIVEL_DEBUG=0
#---------------------------Funcoes---------------------------------------------
Debugar(){
  [ $1 -le $NIVEL_DEBUG ] && echo "Debug $* --------"
}

Soma() {
  local total=0

  for i in $(seq 1 25); do
    Debugar 1 "Entrei no for com o valor:$i"
    total=$(( $total + $i))
    Debugar 2 "Depois da soma: $total"
  done
  echo $total
}
case "$1" in
  -d) [ $2 ] && NIVEL_DEBUG=$2 ;;
   *)  Soma                    ;;
esac
Soma
#---------------------------Execucoes-------------------------------------------
