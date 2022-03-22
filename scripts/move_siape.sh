#!/bin/bash

c="y"
while [ "$c" = "y" ]
do
	for i in $(seq 1 1 12)
	do	
		if [ "$i" -le "9" ]
			then mv /home/thallys.silva/AML_free/files/20210${i}_Servidores_SIAPE /home/thallys.silva/AML_free/files/SIAPE
		elif [ "$i" -ge "10" ] 
			then mv /home/thallys.silva/AML_free/files/2021${i}_Servidores_SIAPE /home/thallys.silva/AML_free/files/SIAPE
		fi
	done
	c="n"
done