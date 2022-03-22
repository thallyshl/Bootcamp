create table final_cadastro_siape_reduzida (
	id_servidor_portal int null,
	nome varchar (200) null,
	cpf varchar (14) null,
	matricula varchar (10) null,
	descricao_cargo varchar(100) null,
	data_ingresso_cargofuncao date null,
	data_nomeacao_cargofuncao date null,
	data_ingresso_orgao date null,
	uf_exercicio varchar(2) NULL
);
insert into final_cadastro_siape_reduzida
select
	id_servidor_portal,
	max(nome),
	max(cpf),
	max(matricula),
	max(descricao_cargo),
	max(data_ingresso_cargofuncao),
	max(data_nomeacao_cargofuncao),
	max(data_ingresso_orgao),
	max(uf_exercicio)
from final_cadastro_siape group by id_servidor_portal;