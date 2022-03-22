create table Orgao (
	codigo_orgao int primary key,
	nome_orgao varchar (200) null,
	codigo_orgao_superior int not null,
	foreign key (codigo_orgao_superior) references Orgao_superior (codigo_orgao_superior)
);
select * from orgao;
insert into Orgao
select
	distinct on (codigo_orgao)
	codigo_orgao,
	nome_orgao,
	codigo_orgao_superior
from final_cpgf
order by codigo_orgao, final_cpgf.datat_trasacao desc;