#/bin/sh

if [[ $1 = "ains" ]]; then
  cp ./ains/* ~/
elif [[ $1 = "hato" ]]; then
  cp ./hato.yml ~/
fi
