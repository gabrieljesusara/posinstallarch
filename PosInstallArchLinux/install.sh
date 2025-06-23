#!/bin/bash

# ---------------------------------------------------------------
# Installation and Configuration Automation Script
# Author: Gabriel Jesus
#
# This script was independently developed and is my own work.
# Its purpose is to automate installation, configuration, and
# system adjustments in a practical and efficient way.
#
# Usage, redistribution, or modification of this script without
# my prior authorization is not allowed.
#
# I take no responsibility for any damages, losses, or issues
# resulting from improper or irresponsible use of this material.
#
# Use at your own risk.
# ---------------------------------------------------------------

#repositories
source ./script/loading.sh




# Responsibility Term

typing_effect "
			Termo de Responsabilidade (B R A Z I L)

	Este script foi desenvolvido exclusivamente para meu uso pessoal.

	NÃO me responsabilizo por quaisquer danos, perda de dados, 
	problemas de funcionamento ou qualquer outro tipo de prejuízo 
	resultante do uso deste script em outros dispositivos ou ambientes.

	O uso, redistribuição ou modificação deste script sem minha 
	autorização prévia não é permitido.

	O uso deste script é de TOTAL responsabilidade do usuário.

	Utilize por sua conta e risco.
	
			
			Disclaimer:  (U S)

	This script was developed exclusively for my personal use.

	I am NOT responsible for any damage, data loss, malfunction, 
	or any other issues resulting from the use of this script 
	on other devices or environments.

	Use, redistribution, or modification of this script without 
	my prior authorization is not permitted.

	The use of this script is entirely at the user's own risk.

	Use at your own risk.
	
	
" "${GREEN}"
echo 


read -p "	    Do you accept the terms and wish to continue? (yes/no): " resposta
if [[ "$resposta" != "yes" && "$resposta" != "Yes" ]] ; then
	clear
    echo "                   Execution cancelled.."
    exit 1
fi

clear



# Starting system

peito &
sleep 1


# information

echo
typing_effect "			⚡  ARCHLINUX POST-INSTALLATION" "${BLUE}"
echo
typing_effect "			      👤 Created by:" "${ORANGE}"
echo
typing_effect "			 G A B R I E L  J E S U S" "${PURPLE}"
echo
typing_effect "		 	   NOTE: PERSONAL USE ONLY" "${RED}"
echo
echo


# Password to run system


typing_effect "			 🚀 U S E R N A M E" && read -p "			  	  " username
echo
typing_effect "			 🔑 P A S S W O R D" && read -p "			  	  " pass


# run system

if [[ "$username" == "1" && "$pass" == "1" ]]; then
    echo
    typing_effect "	                    Correct password"
    sleep 2
    clear
         
    peito &
    echo
    echo
    echo
    typing_effect " 		            S T A R T I N G " "${RED}"
    echo
    
    #Pegando o pacote 
    
    while read -r pacote || [[ -n "$pacote" ]]; do
    [ -z "$pacote" ] && continue
    mostrar_nome_mudando "$pacote"
    sleep 1 
    echo
    echo
    echo
    sudo pacman -S --noconfirm"$pacote"
    echo
    sleep 1
    done < ./script/programs.sh
    
    echo
    echo -e "\n${GREEN}		✅ All packages were successfully installed.${NC}\n"
    sleep 2
    echo
    echo
    clear
    
    
    #Configurando
    bash "script/config.sh"
    
    
else
    echo
    typing_effect "                    Access denied"
fi

