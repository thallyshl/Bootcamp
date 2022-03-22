#!/bin/bash

for i in $(seq 1 1 11)
do
	touch "/home/thallys.silva/AML_free/files_csv/SIAPE/rem/2021${i}_r.csv"
	if [ "$i" -le "9" ]	
		then head -n -1 "/home/thallys.silva/AML_free/files_csv/SIAPE/20210${i}_Remuneracao.csv" > "/home/thallys.silva/AML_free/files_csv/SIAPE/rem/2021${i}_r.csv"
	elif [ "$i" -ge "10" ]
		then head -n -1 "/home/thallys.silva/AML_free/files_csv/SIAPE/2021${i}_Remuneracao.csv" > "/home/thallys.silva/AML_free/files_csv/SIAPE/rem/2021${i}_r.csv"
	fi
	
	PGPASSWORD=Thallys4529@ psql -U aml -d aml -c "\copy tmp_remuneracao_SIAPE from '/home/thallys.silva/AML_free/files_csv/SIAPE/rem/2021${i}_r.csv' csv delimiter ';' HEADER ENCODING 'latin1'"
done