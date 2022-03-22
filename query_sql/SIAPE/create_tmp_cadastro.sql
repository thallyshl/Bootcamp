create table public.tmp_cadastro_SIAPE (
	id_servidor_portal varchar (1024) null,
	nome varchar (200) null,
	cpf varchar (200) null,
	matricula varchar (200) null,
	descricao_cargo varchar (200) null,
	classe_cargo varchar (2) null,
	referencia_cargo varchar(5) null,
	padrao_cargo varchar (5) null,
	nivel_cargo varchar (200) null,
	sigla_funcao varchar (200) null,
	nivel_funcao varchar (200) null,
	funcao varchar (200) null,
	codigo_atividade varchar (200) null,
	atividade varchar (200) null,
	opcao_parcial varchar (200) null,
	cod_uorg_lotacao varchar (200) null,
	uorg_lotacao varchar (200) null,
	cod_org_lotacao varchar (200) null,
	org_lotacao varchar (200) null,
	cod_orgsup_lotacao varchar (200) null,
	orgsup_lotacao varchar (200) null,
	cod_uorg_exercicio varchar (200) null,
	uorg_exercicio varchar (200) null,
	cod_org_exercicio varchar (200) null,
	org_exercicio varchar (200) null,
	cod_orgsup_exercicio varchar (200) null,
	orgsup_exercicio varchar (200) null,
	cod_tipo_vinculo varchar (200) null,
	tipo_vinculo varchar (200) null,
	situacao_vinculo varchar (200) null,
	data_inicio_afastamento varchar (200) null,
	data_termino_afastamento varchar (200) null,
	regime_juridico varchar (200) null,
	jornada_de_trabalho varchar (200) null,
	data_ingresso_cargofuncao varchar (200) null,
	data_nomeacao_cargofuncao varchar (200) null,
	data_ingresso_orgao varchar (200) null,
	documento_ingresso_servicopublico varchar(200) null,
	data_diploma_ingresso_servicopublico varchar (50) NULL,
	diploma_ingresso_cargofuncao varchar (20) NULL,
	diploma_ingresso_orgao varchar (20) NULL,
	diploma_ingresso_servicopublico varchar (20) NULL,
	uf_exercicio varchar(2) NULL
);