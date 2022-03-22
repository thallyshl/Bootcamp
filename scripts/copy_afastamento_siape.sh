#!/bin/bash

for i in $(seq 1 1 11)
do
	if [ "$i" -le "9" ]	
		then PGPASSWORD=Thallys4529@ psql -U aml -d aml -c "\copy public.tmp_serv_SIAPE_Afastamento from '/home/thallys.silva/AML_free/files_csv/SIAPE/20210${i}_Afastamentos.csv' csv delimiter ';' HEADER ENCODING 'latin1'"
	elif [ "$i" -ge "10" ]
		then PGPASSWORD=Thallys4529@ psql -U aml -d aml -c "\copy public.tmp_serv_SIAPE_Afastamento from '/home/thallys.silva/AML_free/files_csv/SIAPE/2021${i}_Afastamentos.csv' csv delimiter ';' HEADER ENCODING 'latin1'"
	fi
done