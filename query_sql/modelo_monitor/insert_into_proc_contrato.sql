create sequence sequence_id_proc_contrato;
alter table proc_contrato alter column id_proc_contrato set default nextval('sequence_id_proc_contrato');
alter table proc_contrato alter column categoria set default null;
alter table proc_contrato alter column documento_contraparte set default null;
alter table proc_contrato alter column dt_vencimento set default null;
alter table proc_contrato alter column moeda set default null;
alter table proc_contrato alter column nome_contraparte set default null;
alter table proc_contrato alter column outros set default '{}';
alter table proc_contrato alter column pais set default null;
alter table proc_contrato alter column relacionado set default null;
alter table proc_contrato alter column relacionamento set default null;
alter table proc_contrato alter column status set default null;
alter table proc_contrato alter column valor set default null;
alter table proc_contrato alter column valor_entrada set default null;
alter table proc_contrato alter column valor_mensal set default null;
alter table proc_contrato alter column produto set default null;

insert into proc_contrato (
	codigo,
	dt_entrada,
	id_proc_cliente,
	id_proc_contrato,
	id_produto
)
select
	pc.codigo,
	pc.dt_entrada,
	pc.id_proc_cliente,
	nextval('sequence_id_proc_contrato'),
	p.id_produto	
from proc_cliente pc
inner join produto p on case when pc.codigo like 'CP%' then p.id_produto = 1 else p.id_produto = 2
end;