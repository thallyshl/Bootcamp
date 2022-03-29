create table tmp_dossie_qa (
	id_dossie numeric (20,0),
	cod_user numeric (20,0),
	id_status_analise numeric (20,0),
	score numeric (29,16),
	dt_dossie date not null,
	dt_inicio_analise date,
	dt_fim_analise date
);