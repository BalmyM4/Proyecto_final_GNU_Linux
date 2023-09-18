#!/bin/bash

#############################################################################################################################################
#                                                                                                                                           #
#                                                     Explicación del archivo                                                               #
#                                                                                                                                           #        
#############################################################################################################################################


# Este archivo muestra contiene el main de nuestro proyecto.
#
# Integrantes del equipo:
#       - Balam Flores Gabriel Patricio
#       - Larios Ponce Hector Manuel
#
# Comando: main.

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
#                                                Comandos para ejecución                                                                    #
#                                                                                                                                           #        
#############################################################################################################################################

trap 'echo "No se puede salir con ctrl+c"' SIGINT
trap 'echo "No se puede salir con ctrl+c"' SIGTSTP

superUsuario () {
sudo chmod +x inicio.sh
sudo chmod +x creditos.sh
sudo chmod +x game.sh
sudo chmod +x feho.sh
sudo chmod +x search.sh
#sudo chmod +x ayuda.sh
#sudo chmod +x bashmusic.sh
#sudo chmod +x infosys.sh

#sudo cp inicio.sh /usr/local/bin/
#sudo cp creditos.sh /usr/local/bin/
#sudo cp game.sh /usr/local/bin/
#sudo cp feho.sh /usr/local/bin/
#sudo cp search.sh /usr/local/bin/
#sudo cp ayuda.sh /usr/local/bin/
#sudo cp bashmusic.sh /usr/local/bin/
#sudo cp infosys.sh /usr/local/bin/

}

#############################################################################################################################################
#                                                                                                                                           #
#                                                Comandos de decoración                                                                     #
#                                                                                                                                           #        
#############################################################################################################################################

hora=$(grep "rtc_time" /proc/driver/rtc | awk '{print $3}')
IFS=":" read -ra time <<< "$hora"
hour=${time[0]}
min=${time[1]}
sec=${time[2]}
hour=$(($hour+6))

prompt () {
    echo -ne "\n${az}╔╣ ${v}${bold}$(whoami)${b}${normal}@${t}${bold}$(hostname) ${normal}${az}╠══╣ ${m}${bold}$hour:$min:$sec ${normal}${az}║\n${az}╚═╣ ${r}${bold}$ ${normal}${az}╠═${bold}${r}>${v}>${t}>${normal}${b} "
    read comando
}

despedida () {
    printf "\n🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧\n"

    printf "\n  🟫🟨🟨🟨🟨 🟫🟨    🟫🟨 🟫🟨🟨🟨🟨🟨  🟫🟨🟨🟨"
    printf "\n  🟫🟨  🟫🟨   🟫🟨🟫🟨       🟫🟨      🟫🟨    "
    printf "\n  🟫🟨🟫🟨       🟫🟨         🟫🟨      🟫🟨🟨  "
    printf "\n  🟫🟨  🟫🟨     🟫🟨         🟫🟨      🟫🟨    "
    printf "\n  🟫🟨🟨🟨🟨     🟫🟨         🟫🟨      🟫🟨🟨🟨\n"

    printf "\n🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧\n"
}

#############################################################################################################################################
#                                                                                                                                           #
#                                                                main                                                                       #
#                                                                                                                                           #        
#############################################################################################################################################

main () {
    superUsuario
    ./inicio.sh
    comando=""
    until [ "$comando" = "exit" ]; do
        prompt
        case "$comando" in 
            "feho")
                ./feho.sh
                ;;
            
            "creditos")
                ./creditos.sh
                ;;
            
            "game")
                ./game.sh
                ;;
            
            "search")
                ./search.sh
                ;;
            
            #"ayuda")
                #./ayuda.sh
                #;;
            
            #"infosys")
                #./infosys.sh
                #;;

            #"bashmusic")
                #./bashmusic.sh
                #;;
            
            "clear")
                clear
                printf "\n🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧\n"
                ;;

            "exit")
                despedida
                ;;

            *)
                echo -e "\n\t${r}***Error: comando no válido.${b}"
                ;;
        esac
    done
}

main

#############################################################################################################################################