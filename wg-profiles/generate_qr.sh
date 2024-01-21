#!/bin/zsh

if which qrencode &>/dev/null
then
  for wg_config in *.conf
  do
    qrencode -t png -o $wg_config-qr.png < $wg_config
  done
else
  printf "Please ensure that qrencode is installed."
fi