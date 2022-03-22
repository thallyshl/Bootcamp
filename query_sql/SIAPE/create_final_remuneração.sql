create table final_remuneracao_SIAPE (
	ano int null,
	mes int null,
	id_servidor_portal int null,
	cpf varchar(14) null,
	nome varchar(200) null,
	remuneração_após_deduções_obrigatórias decimal (15,2) null,
	remuneração_após_deduções_obrigatórias_dolar decimal (15,2) null,
	total_de_verbas_indenizatórias decimal (15,2) null,
	total_de_verbas_indenizatórias_dolar decimal (15,2) null
);