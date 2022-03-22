CREATE TABLE public.final_ceis (
    tipo_de_pessoa varchar(1) null,
    cpf_ou_cnpj_do_sancionado varchar(1024) null,
    nome_informado_pelo_orgao_sancionador varchar(1024) null,
    razao_social_cadastro_receita varchar(1024) null,
    nome_fantasia_cadastro_receita varchar(1024) null,
    numero_do_processo varchar(1024) null,
    tipo_sancao varchar(1024) null,
    data_inicio_sancao date  null,
    data_final_sancao date null,
    orgao_sancionador varchar(1024) null,
    uf_orgao_sancionador varchar(2) null,
    origem_informacoes varchar(1024) null,
    data_origem_informacoes date null,
    data_publicacao date null,
    publicacao varchar(1024) null,
    detalhamento varchar(2000) null,
    abragencia_definida_em_decisao_judicial varchar(1024) null,
    fundamentacao_legal varchar(2000) null,
    descricao_da_fundamentacao_legal varchar(2500) null,
    data_do_transito_em_julgado date null,
    complemento_do_orgao varchar(2000) null,
    observacoes varchar(2500) null
);