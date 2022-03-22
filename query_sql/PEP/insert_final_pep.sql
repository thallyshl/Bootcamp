create table public.tmp_pep(
    cpf varchar(1024) null,
    nome_pep varchar(1024) null,
    sigla_funcao varchar(1024) null,
    descricao_funcao varchar(1024) null,
    nivel_funcao varchar(1024) null,
    nome_orgao varchar(1024) null,
    data_inicio_exercicio varchar(1024) null,
    data_fim_exercicio varchar(1024) null,
    data_fim_carencia varchar(1024) null    
);
create table public.final_pep(
    cpf varchar(1024) null,
    nome_pep varchar(1024) null,
    sigla_funcao varchar(1024) null,
    descricao_funcao varchar(1024) null,
    nivel_funcao varchar(1024) null,
    nome_orgao varchar(1024) null,
    data_inicio_exercicio date null,
    data_fim_exercicio date null,
    data_fim_carencia date null
);
insert into final_pep
select
	cpf,
	nome_pep,
	sigla_funcao,
	descricao_funcao,
	nivel_funcao,
	nome_orgao,
	to_date (data_inicio_exercicio, 'dd/mm/yyyy'),
	to_date (data_fim_exercicio, 'dd/mm/yyyy'),
	to_date (data_fim_carencia, 'dd/mm/yyyy')
from tmp_pep;