VAR=""
VAR2=""

if [[ "$VAR" = "$VAR2" ]]; then
  echo "Sao Iguais"
fi

if [[ "$VAR" = "$VAR2" ]]
then
  echo "Sao Iguais"
fi

if test "$VAR" = "$VAR2"
then
  echo "Sao Iguais"
fi


if [ "$VAR" = "$VAR2" ]
then
  echo "Sao Iguais"
fi

[ "$VAR" = "$VAR2" ] && echo "Sao Iguais"
