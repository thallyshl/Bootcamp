insert into tmp_dossie_qa (
	id_dossie,
	cod_user,
	id_status_analise,
	score_risco,
	dt_dossie,
	dt_inicio_analise,
	dt_fim_analise
)
select
	id_dossie,
	cod_user,
	id_status_analise,
	score_risco,
	dt_dossie,
	dt_inicio,
	dt_fim
from dossie d 
where
	extract(month from dt_dossie) = 2
	and extract (year from dt_dossie) = 2022
    and id_dossie not in (select id_dossie from tmp_dossie_qa)
	and id_status_analise = 5
	and random() <= 0.1;
select * from tmp_dossie_qa;