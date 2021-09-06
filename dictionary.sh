#!/bin/bash -x
declare -a sounds
sounds[1]="bark"
sounds[2]="moo"
sounds[3]="Chirp"
sounds[4]="howl"
echo " Dog Sound " ${sounds[dog]}
echo " Animal sounds " ${sounds[@]}
echo " All animals " ${!sounds[@]}
