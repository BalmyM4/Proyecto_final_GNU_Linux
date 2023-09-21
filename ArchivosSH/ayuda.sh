#!/bin/bash
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

comandos=(
    "ayuda    "
    "feho     "
    "creditos "
    "search   " 
    "infosys  " 
    "game     "
    "bashmusic"
    "exit     "
    "clear    ")
descripciones=(
    "Muestra lista de comandos disponibles y una descripcion de su funcionamiento.    "
    "Muestra la fecha y la hora actual.                                               "
    "Despliega los creditos de todo el código.                                        "
    "Busca un archivo especificado en la ubicacion dada.                              "
    "Muestra los datos técnicos de sistema y hardware.                                "
    "Permite al usuario interactuar con diferentes juegos de terminal preestablecidos."
    "Abre un eproductor de musica con interfaz gráfica.                               "
    "Terminar la ejecución del programa.                                              "
    "Limpiar terminal.                                                                ")

    clear

    printf "\n🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟦🟩🟥\n"

    printf "\n                     🟫🟨🟨🟨🟨 🟫🟨   🟫🟨 🟫🟨  🟫🟨 🟫🟨🟨🟨   🟫🟨🟨🟨🟨"
    printf "\n                     🟫🟨  🟫🟨   🟫🟨🟫🟨  🟫🟨  🟫🟨 🟫🟨  🟫🟨 🟫🟨  🟫🟨"
    printf "\n                     🟫🟨🟨🟨🟨     🟫🟨    🟫🟨  🟫🟨 🟫🟨  🟫🟨 🟫🟨🟨🟨🟨"
    printf "\n                     🟫🟨  🟫🟨     🟫🟨    🟫🟨  🟫🟨 🟫🟨  🟫🟨 🟫🟨  🟫🟨"
    printf "\n                     🟫🟨  🟫🟨     🟫🟨    🟫🟨🟨🟨🟨 🟫🟨🟨🟨   🟫🟨  🟫🟨\n"

    printf "\n🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟥🟪🟦🟩🟨🟧🟦🟩🟥\n"


    echo -e "${m}╔═══════════╦═══════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "║  ${bold}${b}Comando  ${normal}${m}║                                   ${bold}${b}Descripción                                     ${normal}${m}║"
    echo -e "╠═══════════╬═══════════════════════════════════════════════════════════════════════════════════╣"

    for ((indice = 0; indice < ${#comandos[@]}; indice++)); do
        comnd="${comandos[$indice]}"
        desc="${descripciones[$indice]}"

        # Imprime la fila con los valores centrados y formato si es necesario
        echo -e "║ ${bold}${am}${comnd} ${normal}${m}║ ${b}${desc} ${normal}${m}║" 
    done

    echo -e "╚═══════════╩═══════════════════════════════════════════════════════════════════════════════════╝${normal}${b}"