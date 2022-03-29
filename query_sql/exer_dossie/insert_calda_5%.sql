select
	cod_user
	id_dossie,
	cod_user,
	id_status_analise,
	score,
	dt_dossie,
	dt_inicio,
	dt_fim
from dossie d 
where
	extract(month from dt_dossie) = 2
	and extract (year from dt_dossie) = 2022
	and id_status_analise in (3, 5, 7, 8, 25)
	and id_dossie not in (select id_dossie from tmp_dossie_qa)
	and random() <= 0.05;