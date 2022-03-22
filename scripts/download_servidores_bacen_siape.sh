#!/bin/bash


#Baixar os arquivos em AML_free/files

confirmacao="y"

while [ "$confirmacao" = "y" ]
do
	for i in $(seq 1 1 12)
	do
		if [ "$i" -le "9" ]	
			then wget -P /home/thallys.silva/AML_free/files "https://www.portaltransparencia.gov.br/download-de-dados/servidores/20210${i}_Servidores_BACEN"
				wget -P /home/thallys.silva/AML_free/files "https://www.portaltransparencia.gov.br/download-de-dados/servidores/20210${i}_Servidores_SIAPE"
				
		else
			wget -P /home/thallys.silva/AML_free/files "https://www.portaltransparencia.gov.br/download-de-dados/servidores/2021${i}_Servidores_BACEN"
			wget -P /home/thallys.silva/AML_free/files "https://www.portaltransparencia.gov.br/download-de-dados/servidores/2021${i}_Servidores_SIAPE"
		fi
	done
	confirmacao=$"n"
	unzip /home/thallys.silva/AML_free/files/'*' -d /home/thallys.silva/AML_free/files_csv/
done