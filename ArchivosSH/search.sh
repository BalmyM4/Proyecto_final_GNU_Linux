#!/bin/bash

#############################################################################################################################################
#                                                                                                                                           #
#                                                     Explicación del archivo                                                               #
#                                                                                                                                           #        
#############################################################################################################################################


# Este archivo muestra los créditos de la creación del proyecto.
#
# Integrantes del equipo:
#       - Balam Flores Gabriel Patricio
#       - Larios Ponce Hector Manuel
#
# Comando: search.


#############################################################################################################################################
#                                                                                                                                           #
#                                            Comandos para cambiar de color las impresiones                                                 #
#                                                                                                                                           #        
#############################################################################################################################################

n="\033[30m"
r="\033[31m"
v="\033[32m"
am="\033[33m"
az="\033[34m"
m="\033[35m"
t="\033[36m"
b="\033[37m"
bold=$(tput bold)
normal=$(tput sgr0)

#############################################################################################################################################
#                                                                                                                                           #
#                                                                Prompt                                                                     #
#                                                                                                                                           #        
#############################################################################################################################################

hora=$(grep "rtc_time" /proc/driver/rtc | awk '{print $3}')
IFS=":" read -ra time <<< "$hora"
hour=${time[0]}
min=${time[1]}
sec=${time[2]}
hour=$(($hour+6))

prompt () {
    echo -ne "\n${az}╔╣ ${v}${bold}$(whoami)${b}${normal}@${t}${bold}$HOSTNAME ${normal}${az}╠══╣ ${m}${bold}$hour:$min:$sec ${normal}${az}╠══╣ ${b}$1 ${normal}${az}║\n${az}╚═╣ ${r}${bold}$ ${normal}${az}╠═${bold}${r}>${v}>${t}>${normal}${b} "
    read nombre
}

#############################################################################################################################################
#                                                                                                                                           #
#                                                               Comando                                                                     #
#                                                                                                                                           #        
#############################################################################################################################################

printf "\n🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧\n"

printf "\n    🟫🟨🟨🟨  🟫🟨🟨🟨    🟫🟨🟨    🟫🟨🟨🟨🟨    🟫🟨🟨  🟫🟨  🟫🟨"
printf "\n  🟫🟨        🟫🟨      🟫🟨  🟫🟨  🟫🟨  🟫🟨  🟫🟨      🟫🟨  🟫🟨"
printf "\n    🟫🟨🟨    🟫🟨🟨    🟫🟨🟨🟨🟨  🟫🟨🟨🟨    🟫🟨      🟫🟨🟨🟨🟨"
printf "\n        🟫🟨  🟫🟨      🟫🟨  🟫🟨  🟫🟨  🟫🟨  🟫🟨      🟫🟨  🟫🟨"
printf "\n  🟫🟨🟨🟨    🟫🟨🟨🟨  🟫🟨  🟫🟨  🟫🟨  🟫🟨    🟫🟨🟨  🟫🟨  🟫🟨\n"

printf "\n🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧\n"

nombre=""

prompt "search: Ruta"
ruta=$nombre

prompt "search: Nombre del archivo"
archivo=$nombre

if [ -e "$ruta/$archivo"  ]; then
    echo -e "\n\t${v}El archivo se ha encontrado con exito."
    echo -e "\n\t${am}Listado de la ruta: ${b}"
    ls $ruta

elif [ -e "$HOME/$ruta/$archivo" ]; then
    echo -e "\n\t${v}El archivo se ha encontrado con exito."
    echo -e "\n\t${am}Listado de la ruta: ${b}"
    ls $HOME/$ruta

else
    echo -e "\n\t${r}El archivo no se ha encontrado."
fi

printf "\n🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧\n"

#############################################################################################################################################