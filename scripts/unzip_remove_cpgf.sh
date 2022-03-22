#!/bin/bash

#Unzip de todos os arquivos CPGF na pasta files e possivel remocao de arquivos originais

read -p "Gostaria de descompactar os arquivos da pasta files? (y/n)" confirmacao
read -p "Gostaria de remover os arquivos da pasta files? (y/n)" remover

if [ "$confirmacao" = "y" -a "$remover" = "y" ]
	then 
		unzip /home/thallys.silva/AML_free/files/'*' -d /home/thallys.silva/AML_free/files_csv/
		rm -f /home/thallys.silva/AML_free/files/*
		echo "Obrigado!"
elif [ "$confirmacao" = "y" -a "$remover" = "n" ]
		then unzip /home/thallys.silva/AML_free/files/'*' -d /home/thallys.silva/AML_free/files_csv/
		echo "Obrigado!"
else
	echo "Obrigado!"
fi