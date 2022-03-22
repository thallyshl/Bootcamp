create table Orgao_superior (
	codigo_orgao_superior int primary key,
	nome_ogao_superior varchar (200)
);
insert into Orgao_superior
select
	codigo_orgao_superior,
	nome_orgao_superior
from final_cpgf
group by codigo_orgao_superior, nome_orgao_superior;