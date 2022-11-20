#!/bin/bash



if [ "$1" = "install" ] || [ "$2" = "termux" ]
then

mkdir -p $HOME/.local/bin

curl -L https://raw.githubusercontent.com/uGeek/rccalendar/main/c -o \
                   $HOME/.local/bin/c && chmod +x $HOME/.local/bin/c
mkdir -p $HOME/.config/rccalendar/
curl -L https://raw.githubusercontent.com/uGeek/rccalendar/main/.config/rccalendar/personal.conf -o \
                   $HOME/.config/rccalendar/personal.conf
clear                   
echo "Edita el archivo de configuración: $HOME/.config/rccalendar/personal.conf"

###
pkg upgrade    
pkg install jq termux-api termux-services rclone -y
mkdir -p ~/.shortcuts
echo "bash ~/.config/rccalendar/c termux" > ~/.shortcuts/Calendario

exit
fi

