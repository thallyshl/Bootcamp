#!/bin/bash

# Dar a opção do ano, para baixar arquivos
#Baixar os arquivos em AML_free/files

confirmacao="y"
while [ "$confirmacao" = "y" ]
do
	read -p "Olá, qual ano você gostaria de utilizar no download?" ano_escolhido

	for i in $(seq 1 1 12)
	do
		if [ "$i" -le "9" ]	
			then wget -P /home/thallys.silva/AML_free/files "https://www.portaltransparencia.gov.br/download-de-dados/cpgf/20${ano_escolhido}0${i}"
		else
			wget -P /home/thallys.silva/AML_free/files "https://www.portaltransparencia.gov.br/download-de-dados/cpgf/20${ano_escolhido}${i}"
		fi
	done
	read -p "Deseja baixar arquivos de outro ano (y/n)?" confirmacao
done