create table public.tmp_serv_SIAPE_Afastamento (
	ano varchar(4) null,
	mes varchar(15) null,
	id_servidor varchar(50) null,
	cpf varchar(50) null,
	nome varchar(150) null,
	data_inicio varchar(50) null,
	data_fim_afastamento varchar(50) null
);
create table public.final_serv_SIAPE_Afastamento (
	ano int null,
	mes int null,
	id_servidor int null,
	cpf varchar(14) null,
	nome varchar(150) null,
	data_inicio date null,
	data_fim_afastamento date null
);
insert into final_serv_SIAPE_Afastamento
select 
	cast (ano as int),
	cast (mes as int),
	cast (id_servidor as int),
	cpf,
	nome,
	to_date (data_inicio, 'DD/MM/YYYY'),
	to_date (data_fim_afastamento, 'DD/MM/YYYY')
from tmp_serv_SIAPE_Afastamento;