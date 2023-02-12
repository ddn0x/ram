#!/bin/bash

cat << "EOF"

██████╗░░█████╗░███╗░░░███╗
██╔══██╗██╔══██╗████╗░████║
██████╔╝███████║██╔████╔██║
██╔══██╗██╔══██║██║╚██╔╝██║
██║░░██║██║░░██║██║░╚═╝░██║
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝

EOF

echo -e "\033[34m Codado por https/github.com/ddn0x\033[0m\n"

# Lê o comando como argumento
if [ $# -eq 0 ]; then
  echo -e "\033[31m Error: É necessário fornecer o comando como argumento.\033[0m"
  exit 1
fi
command=$1

case $command in
  "otim")
    # Otimiza a memória RAM
    sync
    echo 3 | sudo tee /proc/sys/vm/drop_caches &>/dev/null
    ;;
  *)
    echo -e "\033[31m Comando inválido. O único comando disponível é: otim\033[0m"
    exit 1
    ;;
esac
