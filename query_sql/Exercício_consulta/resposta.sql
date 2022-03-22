--Questão 03
select distinct( nova_tabela.nome_orgao ) from
(select final_cpgf.nome_orgao, final_cpgf.transacao, final_cpgf.ano, final_cpgf.mes, final_cpgf.valor, 
count(*) as "qt_transação"
from final_cpgf
where transacao like '%sigilo' and final_cpgf.valor = 1000.00
group by nome_orgao, transacao, ano, mes, valor
having count(*) >= 100
order by qt_transação) as nova_tabela;
--Departamento da polícia federal e Presidência da república.

--Questão 02
select distinct(cinco_k.nome_portador) from
(select 
	cpf_portador, 
	nome_portador,
	datat_trasacao,
	sum(valor) as "Valor em um dia"
from final_cpgf
where transacao like 'SAQUE%'
group by 
	cpf_portador,
	nome_portador,
	datat_trasacao
having sum(valor) > 5000
order by datat_trasacao) as cinco_k;
-- José Weyne, Tuliana, Carlos Roberto, Gislene Ferreira, Homero Tarrago e Marcos Aurélio Peres.

-- Questão 04
select distinct(nova.nome_orgao) from
(select final_cpgf.nome_orgao, final_cpgf.transacao, final_cpgf.ano, final_cpgf.mes,
sum(valor) as "Valor/mes"
from final_cpgf
where transacao like '%sigilo' and (valor)%100 = 0
group by nome_orgao, transacao, ano, mes
having sum(valor) >= 100000
order by sum(valor)) as nova;
--Dep. da polícia federal e presidência da república.

-- Questão 06
select (distinct (nova.nome) from
(select id_servidor_portal, nome, sum(renda_total) as "renda_anual"
from final_rem_valor_junto 
group by id_servidor_portal, nome
having sum(renda_total) > 500000
order by sum(renda_total)) as nova;

-- Questão 05
select distinct final_cpgf.nome_portador from final_cpgf 
inner join final_pep on final_cpgf.cpf_portador = final_pep.cpf 
and final_cpgf.nome_portador = final_pep.nome_pep;

-- Questão 08
select count(distinct (nova.nome)) from
(select id_servidor_portal, nome, cpf, sum(renda_total) as "renda_anual"
from final_rem_valor_junto 
group by id_servidor_portal, nome, cpf
having sum(renda_total) > 500000
order by sum(renda_total)) as nova inner join final_pep on nova.cpf = final_pep.cpf and nova.nome 
= final_pep.nome_pep;