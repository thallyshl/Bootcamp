create table Portador (
	codigo_portador int primary key not null,
	nome_portador varchar (200) not null,
	cpf_portador varchar(14) not null,
	codigo_orgao int not null,
	codigo_unidade_gestora int not null,
	foreign key (codigo_orgao) references model.orgao (codigo_orgao),
	foreign key (codigo_unidade_gestora) references model.unidade_gestora (codigo_unidade_gestora)
);

create sequence portador_sequence;
alter table portador alter column codigo_portador set default nextval('portador_sequence');

insert into Portador (
	nome_portador,
	cpf_portador,
	codigo_orgao,
	codigo_unidade_gestora
)
select
	distinct on (nome_portador, cpf_portador)
	nome_portador,
	cpf_portador,
	codigo_orgao,
	codigo_unidade_gestora
from final_cpgf
where nome_portador not ilike 'sigiloso'
order by nome_portador, cpf_portador, datat_trasacao;