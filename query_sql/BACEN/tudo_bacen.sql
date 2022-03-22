create table tmp_serv_bacen_Afastamento (
	ano varchar(4) null,
	mes varchar(15) null,
	id_servidor varchar(50) null,
	cpf varchar(50) null,
	nome varchar(150) null,
	data_inicio varchar(50) null,
	data_fim_afastamento varchar(50) null
);
drop table tmp_serv_bacen_afastamento;
select * from tmp_serv_bacen_Afastamento;

create table tmp_cadastro_bacen (
	id_servidor_portal integer null,
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
drop table tmp_cadastro_bacen;
select * from tmp_cadastro_bacen order by nome;
update tmp_cadastro_bacen set cod_uorg_lotacao  = replace (cod_uorg_lotacao , ',', '') where
cod_uorg_lotacao  like '%';
select count(*) from tmp_cadastro_bacen;
select count(distinct(id_servidor_portal)) from tmp_cadastro_bacen;
select * from tmp_cadastro_bacen where id_servidor_portal = '76116192';
select * from tmp_cadastro_bacen where classe_cargo like '';
select count(*) from tmp_cadastro_bacen where classe_cargo like '';
select count(descricao_cargo) from tmp_cadastro_bacen where descricao_cargo = 'Sem informação';
select count(distinct(id_servidor_portal)) from tmp_cadastro_bacen;

create table tmp_obs_bacen (
	ano integer null,
	mes integer null,
	id_servidor_portal integer null,
	nome varchar (200) null,
	cpf varchar (200) null,
	observacoes varchar(1024) null
);
drop table tmp_obs_bacen;
select * from tmp_obs_bacen;
select count(*) from tmp_obs_bacen;


create table tmp_remuneracao_bacen (
	ano integer null,
	mes integer null,
	id_servidor_portal varchar(200) null,
	cpf varchar(200) null,
	nome varchar(200) null,
	remuneração_básica_bruta varchar(200) null,
	remuneração_básica_bruta_dolar varchar(200) null,
	abateteto varchar(200) null,
	abateteto_dolar varchar(200) null,
	gratificação_natalina varchar(200) null,
	gratificação_natalina_dolar varchar(200) null,
	abateteto_da_gratificação_natalina varchar(200) null,
	abateteto_da_gratificação_natalina_dolar varchar(200) null,
	férias varchar(200) null,
	férias_dolar varchar(200) null,
	outras_remunerações_eventuais varchar(200) null,
	outras_remunerações_eventuais_dolar varchar(200) null,
	irrf varchar(200) null,
	irrf_dolar varchar(200) null,
	pss_rpgs varchar(200) null,
	pss_rpgs_dolar varchar(200) null,
	demais_deduções varchar(200) null,
	demais_deduções_dolar varchar(200) null,
	pensão_militar varchar(200) null,
	pensão_militar_dolar varchar(200) null,
	fundo_de_saúde varchar(200) null,
	fundo_de_saúde_dolar varchar(200) null,
	taxa_de_ocupação_imóvel_funcional varchar(200) null,
	taxa_de_ocupação_imóvel_funcional_dolar varchar(200) null,
	remuneração_após_deduções_obrigatórias varchar(200) null,
	remuneração_após_deduções_obrigatórias_dolar varchar(200) null,
	verbas_indenizatórias_civil varchar(200) null,
	verbas_indenizatórias_civil_dolar varchar(200) null,
	verbas_indenizatórias_militar varchar(200) null,
	verbas_indenizatórias_militar_dolar varchar(200) null,
	verbas_indenizatórias_programa_desligamento_792_2017 varchar(200) null,
	verbas_indenizatórias_programa_desligamento_792_2017_dolar varchar(200) null,
	total_de_verbas_indenizatórias varchar(200) null,
	total_de_verbas_indenizatórias_dolar varchar(200) null
);drop table tmp_remuneracao_bacen;
select * from tmp_remuneracao_bacen;
select count(*) from tmp_remuneracao_bacen;


select count(distinct(tmp_cadastro_bacen.nome)), count (distinct(tmp_remuneracao_bacen.nome)) from tmp_cadastro_bacen inner join tmp_remuneracao_bacen on 
tmp_cadastro_bacen.cpf = tmp_remuneracao_bacen.cpf;