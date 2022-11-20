#!/bin/bash





if [ "$1" = "install" ]
then
curl -L https://raw.githubusercontent.com/uGeek/rccalendar/main/c -o \
                   $HOME/.local/bin/c && chmod +x $HOME/.local/bin/c
mkdir -p $HOME/.config/rccalendar/
curl -L https://raw.githubusercontent.com/uGeek/rccalendar/main/.config/rccalendar/personal.conf -o \
                   $HOME/.config/rccalendar/personal.conf
echo "Edita el archivo de configuración: $HOME/.config/rccalendar/personal.conf"
exit
fi
