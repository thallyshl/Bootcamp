create table tmp_dossie_qa (
	id_dossie numeric (20,0),
	cod_user numeric (20,0),
	id_status_analise numeric (20,0),
	score numeric (29,16),
	dt_dossie date not null,
	dt_inicio_analise date,
	dt_fim_analise date
);

--Exercicio 02. 10% dos que tem status 5
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

--Exercicio 03. 10% dos que tem score maior que 100
    insert into tmp_dossie_qa (
	id_dossie,
	cod_user,
	id_status_analise,
	score,
	dt_dossie,
	dt_inicio_analise,
	dt_fim_analise
)
select
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
	and id_dossie not in (select id_dossie from tmp_dossie_qa)
    and id_status in (3, 5, 7, 8, 25)
	and score > 100
	and random() <= 0.1;

--Exercicio 01. Esta dividido em 3 inserts
    insert into tmp_dossie_qa (
	id_dossie,
	cod_user,
	id_status_analise,
	score,
	dt_dossie,
	dt_inicio_analise,
	dt_fim_analise
)
select
distinct on (cod_user)
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
	and score < 50
order by cod_user, random();
insert into tmp_dossie_qa (
	id_dossie,
	cod_user,
	id_status_analise,
	score,
	dt_dossie,
	dt_inicio_analise,
	dt_fim_analise
)
select
distinct on (cod_user)
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
	and score between 50 and 100
order by cod_user, random();
insert into tmp_dossie_qa (
	id_dossie,
	cod_user,
	id_status_analise,
	score,
	dt_dossie,
	dt_inicio_analise,
	dt_fim_analise
)
select
distinct on (cod_user)
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
	and score > 100
order by cod_user, random();
--Fim do exercicio 01


--Exercicio 04. 5% de tudo
insert into tmp_dossie_qa (
	id_dossie,
	cod_user,
	id_status_analise,
	score,
	dt_dossie,
	dt_inicio_analise,
	dt_fim_analise
)
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