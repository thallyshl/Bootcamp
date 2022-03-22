create table model.Unidade_gestora (
	codigo_unidade_gestora int primary key,
	nome_unidade_gestora varchar (200)
);
insert into model.Unidade_gestora
select
	codigo_unidade_gestora,
	MAX(nome_unidade_gestora)
from final_cpgf
group by codigo_unidade_gestora;