create table Cartao (
	codigo_compra int primary key,
	codigo_portador int not null,
	documento_favorecido varchar(100) null,
	nome_favorecido varchar (200) null,
	transacao varchar (100) null,
	valor numeric (15,2) null,
	data_transacao date null,
	foreign key (codigo_portador) references model.portador (codigo_portador)
);

create sequence compra_sequence;
alter table cartao alter column codigo_compra set default nextval('compra_sequence');

insert into Cartao (
	codigo_portador,
	documento_favorecido,
	nome_favorecido,
	transacao,
	valor,
	data_transacao
)
select
	(select codigo_portador from model.Portador where portador.cpf_portador = final_cpgf.cpf_portador and 
	portador.nome_portador = final_cpgf.nome_portador),
	documento_favorecido,
	nome_favorecido,
	transacao,
	valor,
	datat_trasacao
from final_cpgf
where nome_portador not ilike 'sigiloso';