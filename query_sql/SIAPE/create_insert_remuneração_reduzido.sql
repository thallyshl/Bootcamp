

create table final_remuneracao_siape_reduzida (
	ano int null,
	mes int null,
	id_servidor_portal int null,
	cpf varchar(14) null,
	nome varchar(200) null,
	renta_total_real decimal (15,2) null,
	renda_total_dolar decimal (15,2) null
);
insert into final_remuneracao_siape_reduzida
select
	ano,
	mes,
	id_servidor_portal,
	cpf,
	nome,
	(remuneração_após_deduções_obrigatórias + total_de_verbas_indenizatórias) as 
renda_total,
	(remuneração_após_deduções_obrigatórias_dolar + total_de_verbas_indenizatórias_dolar) as 
renda_total_dolar
from final_remuneracao_siape where remuneração_após_deduções_obrigatórias is not null or total_de_verbas_indenizatórias is not null or
remuneração_após_deduções_obrigatórias_dolar is not null or total_de_verbas_indenizatórias_dolar is not null;