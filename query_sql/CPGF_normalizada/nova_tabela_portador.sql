insert into Portador (
	codigo_portador,
	nome_portador,
	cpf_portador,
	codigo_orgao,
	codigo_unidade_gestora
)
select
	nextval('teste'),
	nome_portador,
	cpf_portador,
	codigo_orgao,
	codigo_unidade_gestora
	from
(select
	distinct on (nome_portador, cpf_portador)
	nome_portador,
	cpf_portador,
	codigo_orgao,
	codigo_unidade_gestora
from final_cpgf
where nome_portador not ilike 'sigiloso'
order by nome_portador, cpf_portador, datat_trasacao) novo;