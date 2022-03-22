#!/bin/bash

read -p "Qual ano você quer copiar para a tabela? (17 - 21)" y
m='1'
function copy () {
    while [ "$y" -le "21" -a "$m" -le "12" ]
    do
	    if [ "$m" -le "9" ]
		    then PGPASSWORD=Thallys4529@ psql -U aml -d aml -c "\copy public.tmp_cpgf from '/home/thallys.silva/AML_free/files_csv/20${y}0${m}_CPGF.csv' csv delimiter ';' HEADER ENCODING 'latin1'"
	    elif [ "$m" -ge "10" -a "$m" -le "12" ]
	    	then PGPASSWORD=Thallys4529@ psql -U aml -d aml -c "\copy public.tmp_cpgf from '/home/thallys.silva/AML_free/files_csv/20${y}${m}_CPGF.csv' csv delimiter ';' HEADER ENCODING 'latin1'"
	    fi
        m=$((m+1))
    done
    read -p "Deseja copiar mais um ano? (y/n)" confirm

    if [ "$confirm" = "y" ]
	    then
	    	./copy_csv.sh
        else
	       echo "Obrigado! pressione ctrl + z"	
    fi
}

while [ "$y" -ge "17" -a "$y" -le "21" ]
	do copy
done