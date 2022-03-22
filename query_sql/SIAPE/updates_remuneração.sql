update tmp_remuneracao_siape set remuneração_após_deduções_obrigatórias = 
replace (remuneração_após_deduções_obrigatórias, ',','.') where remuneração_após_deduções_obrigatórias like '%,%';

update tmp_remuneracao_siape set remuneração_após_deduções_obrigatórias_dolar = 
replace (remuneração_após_deduções_obrigatórias_dolar, ',','.') where remuneração_após_deduções_obrigatórias_dolar like '%,%';

update tmp_remuneracao_siape set total_de_verbas_indenizatórias = 
replace (total_de_verbas_indenizatórias, ',','.') where total_de_verbas_indenizatórias like '%,%';

update tmp_remuneracao_siape set total_de_verbas_indenizatórias_dolar = 
replace (total_de_verbas_indenizatórias_dolar, ',','.') where total_de_verbas_indenizatórias_dolar like '%,%';