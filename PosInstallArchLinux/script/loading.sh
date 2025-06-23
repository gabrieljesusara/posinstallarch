#!/bin/bash

# Cores
GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
ORANGE='\033[38;5;214m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
NC='\033[0m'

# Array de cores
colors=("${RED}" "${ORANGE}" "${YELLOW}" "${GREEN}" "${BLUE}" "${PURPLE}" "${CYAN}")


#Effects

typing_effect() {
    local texto="$1"
    local cor="$2"
    for ((i=0; i<${#texto}; i++)); do
        printf "${cor}%s${NC}"      "${texto:$i:1}"
        sleep 0.01
    done
    echo
}


peito() {
    echo -e "${RED}\

⠀
	⠀
		⡹⣧⠀⠀⠀⠀⠀⠀⣼⣿⢱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠶
		⣿⣜⢧⡀⠀⠀⠀⠀⣿⡏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣛⣥⣾⣷⣌
		⣿⣿⣎⢷⡀⠀⠀⠀⣿⢨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⣛⣛⣻⣯⣭⣭⠭⣭⣷⣶⣿⣿⣿⣿⣿⣿
		⣿⣿⣿⣯⢧⠀⠀⠀⢸⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⣵⢾⣻⡿⠿⠿⣿⠋⣶⣷⠢⣾⣿⣿⣿⣿⣿⣿⣿⣿
		⣿⣿⣿⣿⣎⢇⠀⠀⠈⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣡⡻⢃⠛⢉⣨⣽⣶⣶⣷⣮⣣⣶⣾⣿⣿⣿⣿⣿⣿⣿
		⣿⣿⣿⣿⣿⡞⡄⠀⠀⠀⢿⣿⣿⣿⣿⣿⡿⠿⡛⢻⣉⣭⣴⣶⣶⢆⣴⣯⣽⣿⣿⣿⣿⡿⠿⠿⣿⠿⠿⣿⣿⣿⣿⣿
		⣿⣿⣿⣿⣿⣷⢱⠀⠀⠀⠈⠿⣛⠫⣉⢢⣬⣦⣾⣿⣿⣿⡿⢟⢣⣟⣿⣿⢟⣻⣿⣿⣷⣾⣿⣿⣿⣿⣿⡶⠯⣝⣛⣛
		⣿⣿⣿⣿⣿⣿⣇⡄⡠⢔⣢⣵⣾⣧⣿⡿⣿⣿⣿⣿⣿⣛⣯⠃⢟⠛⣍⣉⣭⣭⣿⣭⣭⣭⣭⣭⣭⣷⣶⣿⣿⣿⣿⣿
		⣿⣿⣿⣿⣿⣿⣿⢁⣾⣿⣿⣿⣿⣯⣶⣿⣟⣿⣽⣾⡿⢟⠵⣪⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
		⣿⣿⣿⣿⣿⣿⣿⡏⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⡴⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
		⣿⣿⣭⡻⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢁⢎⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
		⣿⣿⣿⣿⣮⢻⣿⣿⣿⣿⣿⡿⡛⠉⠁⠀⠀⠀⡞⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
		⣿⣿⣿⣿⣿⣧⠻⣿⣿⣿⣿⣾⣿⡄⠀⠀⠀⢠⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿${NC}"
		
}


# Função para exibir o nome mudando de cor na mesma linha
mostrar_nome_mudando() {
    local pacote=$1
    for i in {1..8}; do
        cor=${colors[$((RANDOM % ${#colors[@]}))]}
        echo -ne "			${cor}\r       		          Instalando: ${cor}${pacote}${NC} ✔ "
        sleep 0.1
    done
    #echo -ne "\rInstalando: ${GREEN}${pacote}${NC} ✔ "
}



