insert into model_monitor.tmp_proc_cliente (
	codigo,
	documento,
	dt_atualizacao,
	dt_entrada,
	empresa,
	id_proc_cliente,
	id_sistema,
	nome,
	outros,
	tipo_cadastro
)
select 
	concat ('CPGF_', p.codigo_portador),
	cpf_portador,
	novo.data_transacao,
	novo.data_transacao,
	mug.nome_unidade_gestora,
	nextval('id_proc_cliente_sequence'),
	'1',
	nome_portador,
	'{}',
	'1'
from model.portador p inner join 
(select 
	codigo_portador,
	min(data_transacao) as data_transacao
from model.cartao
group by codigo_portador) novo on p.codigo_portador = novo.codigo_portador
inner join
model.unidade_gestora mug on mug.codigo_unidade_gestora = p.codigo_unidade_gestora;

insert into model_monitor.tmp_proc_cliente (
	codigo,
	documento,
	dt_atualizacao,
	dt_entrada,
	empresa,
	id_proc_cliente,
	id_sistema,
	nome,
	outros,
	renda,
	tipo_cadastro
)
select 
	concat ('SERV_', fcr.id_servidor_portal),
	fcr.cpf,
	fcr.data_ingresso_orgao,
	fcr.data_ingresso_orgao,
	fc.org_lotacao,
	nextval('id_proc_cliente_sequence'),
	'2',
	fcr.nome,
	'{}',
	fv.renda,
	'1'
from public.final_cadastro_siape_reduzida fcr inner join 
(select distinct on (id_servidor_portal)
	id_servidor_portal,
	org_lotacao
from public.final_cadastro_siape
group by id_servidor_portal, org_lotacao, data_ingresso_orgao
order by id_servidor_portal, data_ingresso_orgao desc) fc on fcr.id_servidor_portal = fc.id_servidor_portal
inner join
(select
	id_servidor_portal,
	avg(renda_total) as renda
from final_rem_valor_junto
group by id_servidor_portal 
having avg(renda_total) > 0) fv on fv.id_servidor_portal = fcr.id_servidor_portal;