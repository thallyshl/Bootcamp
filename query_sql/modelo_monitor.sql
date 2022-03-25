--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: operacao_disponivel; Type: TABLE; Schema: public; Owner: demo
--

CREATE TABLE public.operacao_disponivel (
    especie boolean,
    id_operacao_disponivel numeric(20,0) NOT NULL,
    id_produto numeric(20,0) NOT NULL,
    nome character varying(255) NOT NULL,
    prefixo character varying(255) NOT NULL,
    tipo_operacao numeric(1,0) NOT NULL,
    CONSTRAINT ck_opedis_sc_1 CHECK ((tipo_operacao = ANY (ARRAY[(0)::numeric, (1)::numeric, (2)::numeric])))
);


--
-- Name: TABLE operacao_disponivel; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON TABLE public.operacao_disponivel IS 'TABELA QUE CONTEM AS OPERACOES DISPONIVEIS PARA OS PRODUTOS';


--
-- Name: COLUMN operacao_disponivel.especie; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.operacao_disponivel.especie IS 'DETERMINA SE ESSA OPERACAO E FEITA EM DINHEIRO VIVO (0) FALSO, (1) VERDADEIRO.';


--
-- Name: COLUMN operacao_disponivel.id_operacao_disponivel; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.operacao_disponivel.id_operacao_disponivel IS 'ID DA OPERACAO DISPONIVEL';


--
-- Name: COLUMN operacao_disponivel.id_produto; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.operacao_disponivel.id_produto IS 'PRODUTO PARA O QUAL A OPERACAO ESTA DISPONIVEL';


--
-- Name: COLUMN operacao_disponivel.nome; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.operacao_disponivel.nome IS 'NOME DA OPERACAO DISPONIVEL';


--
-- Name: COLUMN operacao_disponivel.prefixo; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.operacao_disponivel.prefixo IS 'PREFIXO PARA INDIVIDUALIZAR A ENTIDADE';


--
-- Name: COLUMN operacao_disponivel.tipo_operacao; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.operacao_disponivel.tipo_operacao IS 'TIPO DE OPERACAO (0) NONE, (1) CREDITO, (2) DEBITO.';


--
-- Name: proc_cliente; Type: TABLE; Schema: public; Owner: demo
--

CREATE TABLE public.proc_cliente (
    aposentado boolean,
    ativo boolean,
    cep character varying(127),
    cnae character varying(10),
    codigo character varying(127) NOT NULL,
    codigo_localizador character varying(255) NOT NULL,
    documento character varying(255) NOT NULL,
    dt_atualizacao date NOT NULL,
    dt_entrada date NOT NULL,
    empresa character varying(127),
    id_proc_cliente numeric(20,0) NOT NULL,
    id_sistema numeric(20,0) NOT NULL,
    nome character varying(255) NOT NULL,
    outros character varying(4000),
    patrimonio numeric(29,16),
    profissao character varying(127),
    renda numeric(29,16),
    score numeric(29,16),
    tipo_cadastro numeric(1,0) NOT NULL,
    validado boolean,
    CONSTRAINT ck_pclien_sc_1 CHECK ((tipo_cadastro = ANY (ARRAY[(1)::numeric, (2)::numeric])))
);



--
-- Name: TABLE proc_cliente; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON TABLE public.proc_cliente IS 'TABELA QUE CONTEM OS CLIENTES PARA PROCESSAMENTO';


--
-- Name: COLUMN proc_cliente.aposentado; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.aposentado IS 'DETERMINA SE O CLIENTE É APOSENTADO (0) FALSO, (1) VERDADEIRO.';


--
-- Name: COLUMN proc_cliente.ativo; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.ativo IS 'DETERMINA SE O CLIENTE ESTA ATIVO (0) FALSO, (1) VERDADEIRO.';


--
-- Name: COLUMN proc_cliente.cep; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.cep IS 'CEP RESIDENCIAL DO CLIENTE';


--
-- Name: COLUMN proc_cliente.cnae; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.cnae IS 'CNAE DO CLIENTE PJ';


--
-- Name: COLUMN proc_cliente.codigo; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.codigo IS 'CODIGO EXTERNO DO CADASTRO - ASSOCIADO AO SISTEMA DO CLIENTE';


--
-- Name: COLUMN proc_cliente.codigo_localizador; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.codigo_localizador IS 'CODIGO LOCALIZADOR PARA AGRUPAR ENDERECO';


--
-- Name: COLUMN proc_cliente.documento; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.documento IS 'DOCUMENTO DO CLIENTE, CHAVE PRIMARIA';


--
-- Name: COLUMN proc_cliente.dt_atualizacao; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.dt_atualizacao IS 'DATA DE ATUALIZACAO DO CADASTRO';


--
-- Name: COLUMN proc_cliente.dt_entrada; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.dt_entrada IS 'DATA ENTRADA DO CADASTRO';


--
-- Name: COLUMN proc_cliente.empresa; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.empresa IS 'EMPRESA DO CLIENTE';


--
-- Name: COLUMN proc_cliente.id_proc_cliente; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.id_proc_cliente IS 'ID DO CLIENTE';


--
-- Name: COLUMN proc_cliente.id_sistema; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.id_sistema IS 'SISTEMA DE CADASTRO DE CLIENTE';


--
-- Name: COLUMN proc_cliente.nome; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.nome IS 'NOME DO CLIENTE';


--
-- Name: COLUMN proc_cliente.outros; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.outros IS 'OUTROS VALORES DO CLIENTE';


--
-- Name: COLUMN proc_cliente.patrimonio; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.patrimonio IS 'VALOR DO PATRIMONIO';


--
-- Name: COLUMN proc_cliente.profissao; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.profissao IS 'PROFISSAO DO CLIENTE';


--
-- Name: COLUMN proc_cliente.renda; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.renda IS 'VALOR DA RENDA DO PERFIL';


--
-- Name: COLUMN proc_cliente.score; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.score IS 'VALOR DO SCORE DO PERFIL';


--
-- Name: COLUMN proc_cliente.tipo_cadastro; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.tipo_cadastro IS 'TIPO DE PESSOA - PF = 1 OU PJ = 2';


--
-- Name: COLUMN proc_cliente.validado; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_cliente.validado IS 'DETERMINA SE O CLIENTE JÁ FOI VALIDADO (0) FALSO, (1) VERDADEIRO.';


--
-- Name: proc_contrato; Type: TABLE; Schema: public; Owner: demo
--

CREATE TABLE public.proc_contrato (
    categoria character varying(256),
    codigo character varying(127) NOT NULL,
    documento_contraparte character varying(256),
    dt_entrada date NOT NULL,
    dt_vencimento date,
    id_proc_cliente numeric(20,0),
    id_proc_contrato numeric(20,0) NOT NULL,
    id_produto numeric(20,0) NOT NULL,
    moeda character varying(256),
    nome_contraparte character varying(256),
    outros character varying(4000),
    pais character varying(256),
    produto character varying(127),
    relacionado character varying(127),
    relacionamento character varying(127),
    status character varying(256),
    valor numeric(29,16),
    valor_entrada numeric(29,16),
    valor_mensal numeric(29,16)
);


--
-- Name: TABLE proc_contrato; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON TABLE public.proc_contrato IS 'TABELA QUE CONTEM OS CONTRATOS PARA PROCESSAMENTO';


--
-- Name: COLUMN proc_contrato.categoria; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.categoria IS 'NOME DA CATEGORIA DO CONTRATO';


--
-- Name: COLUMN proc_contrato.codigo; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.codigo IS 'CODIGO EXTERNO DO CONTRATO';


--
-- Name: COLUMN proc_contrato.documento_contraparte; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.documento_contraparte IS 'DOCUMENTO (CPF/CNPJ) DA CONTRAPARTE';


--
-- Name: COLUMN proc_contrato.dt_entrada; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.dt_entrada IS 'DATA ENTRADA DO CADASTRO';


--
-- Name: COLUMN proc_contrato.dt_vencimento; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.dt_vencimento IS 'DATA VENCIMENTO DO CONTRATO';


--
-- Name: COLUMN proc_contrato.id_proc_cliente; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.id_proc_cliente IS 'ID DO CLIENTE';


--
-- Name: COLUMN proc_contrato.id_proc_contrato; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.id_proc_contrato IS 'ID DO CONTRATO';


--
-- Name: COLUMN proc_contrato.id_produto; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.id_produto IS 'PRODUTO CONTRATADO';


--
-- Name: COLUMN proc_contrato.moeda; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.moeda IS 'MOEDA';


--
-- Name: COLUMN proc_contrato.nome_contraparte; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.nome_contraparte IS 'NOME DA CONTRAPARTE';


--
-- Name: COLUMN proc_contrato.outros; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.outros IS 'OUTROS VALORES DO CLIENTE';


--
-- Name: COLUMN proc_contrato.pais; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.pais IS 'NOME DO PAIS DA OPERACAO';


--
-- Name: COLUMN proc_contrato.produto; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.produto IS 'NOME DO PRODUTO';


--
-- Name: COLUMN proc_contrato.relacionado; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.relacionado IS 'NOME DO RELACIONADO';


--
-- Name: COLUMN proc_contrato.relacionamento; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.relacionamento IS 'TIPO DE RELACIOMANEOT';


--
-- Name: COLUMN proc_contrato.status; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.status IS 'SITUACAO DO CONTRATO';


--
-- Name: COLUMN proc_contrato.valor; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.valor IS 'VALOR DO CONTRATO';


--
-- Name: COLUMN proc_contrato.valor_entrada; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.valor_entrada IS 'VALOR DE ENTRADA CONTRATO';


--
-- Name: COLUMN proc_contrato.valor_mensal; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_contrato.valor_mensal IS 'VALOR DO CONTRATO';


--
-- Name: proc_operacao_realizada; Type: TABLE; Schema: public; Owner: demo
--

CREATE TABLE public.proc_operacao_realizada (
    cep character varying(127),
    codigo character varying(127) NOT NULL,
    complemento character varying(127),
    documento_contraparte character varying(127),
    dt_operacao date NOT NULL,
    especie boolean,
    hr_operacao time without time zone,
    id_operacao_disponivel numeric(20,0) NOT NULL,
    id_proc_cliente numeric(20,0),
    id_proc_contrato numeric(20,0),
    id_proc_operacao_realizada numeric(20,0) NOT NULL,
    id_produto numeric(20,0),
    nome_contraparte character varying(127),
    outros character varying(4000),
    patrimonio numeric(29,16),
    renda numeric(29,16),
    tipo_operacao numeric(1,0) NOT NULL,
    valor numeric(29,16),
    valor_esperado numeric(29,16),
    CONSTRAINT ck_popere_sc_4 CHECK ((tipo_operacao = ANY (ARRAY[(0)::numeric, (1)::numeric, (2)::numeric])))
);




--
-- Name: TABLE proc_operacao_realizada; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON TABLE public.proc_operacao_realizada IS 'TABELA QUE CONTEM AS OPERACOES REALIZADAS PARA PROCESSAMENTO';


--
-- Name: COLUMN proc_operacao_realizada.cep; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.cep IS 'CEP DA OPERACAO';


--
-- Name: COLUMN proc_operacao_realizada.codigo; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.codigo IS 'CODIGO EXTERNO DA OPERACAO REALIZADA';


--
-- Name: COLUMN proc_operacao_realizada.complemento; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.complemento IS 'COMPLEMENTO DA OPERAAO';


--
-- Name: COLUMN proc_operacao_realizada.documento_contraparte; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.documento_contraparte IS 'DOCUMENTO (CPF/CNPJ) DA CONTRAPARTE';


--
-- Name: COLUMN proc_operacao_realizada.dt_operacao; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.dt_operacao IS 'DATA DE REALIZACAO DA OPERACAO';


--
-- Name: COLUMN proc_operacao_realizada.especie; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.especie IS 'DETERMINA SE A MOVIMENTACAO FOI EM ESPECIE (0) FALSO, (1) VERDADEIRO.';


--
-- Name: COLUMN proc_operacao_realizada.hr_operacao; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.hr_operacao IS 'HORARIO DE REALIZACAO DA OPERACAO';


--
-- Name: COLUMN proc_operacao_realizada.id_operacao_disponivel; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.id_operacao_disponivel IS 'OPERACAO DISPONIVEL PARA REALIZAR A OPERACAO';


--
-- Name: COLUMN proc_operacao_realizada.id_proc_cliente; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.id_proc_cliente IS 'ID DO CLIENTE';


--
-- Name: COLUMN proc_operacao_realizada.id_proc_contrato; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.id_proc_contrato IS 'ID_PROC_CONTRRATO';


--
-- Name: COLUMN proc_operacao_realizada.id_proc_operacao_realizada; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.id_proc_operacao_realizada IS 'ID DA OPERACAO REALIZADA';


--
-- Name: COLUMN proc_operacao_realizada.id_produto; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.id_produto IS 'PRODUTO CONTRATADO';


--
-- Name: COLUMN proc_operacao_realizada.nome_contraparte; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.nome_contraparte IS 'NOME DA CONTRAPARTE';


--
-- Name: COLUMN proc_operacao_realizada.outros; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.outros IS 'OUTROS VALORES DO CLIENTE';


--
-- Name: COLUMN proc_operacao_realizada.patrimonio; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.patrimonio IS 'VALOR DO PATRIMONIO';


--
-- Name: COLUMN proc_operacao_realizada.renda; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.renda IS 'VALOR DA RENDA DO PERFIL';


--
-- Name: COLUMN proc_operacao_realizada.tipo_operacao; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.tipo_operacao IS 'TIPO DE OPERACAO (0) NONE, (1) CREDITO, (2) DEBITO.';


--
-- Name: COLUMN proc_operacao_realizada.valor; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.valor IS 'VALOR DA OPERACAO';


--
-- Name: COLUMN proc_operacao_realizada.valor_esperado; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.proc_operacao_realizada.valor_esperado IS 'VALOR DA OPERACAO';


--
-- Name: produto; Type: TABLE; Schema: public; Owner: demo
--

CREATE TABLE public.produto (
    id_produto numeric(20,0) NOT NULL,
    id_sistema numeric(20,0),
    nome character varying(255) NOT NULL,
    prefixo character varying(255) NOT NULL
);



--
-- Name: TABLE produto; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON TABLE public.produto IS 'TABELA QUE CONTEM OS PRODUTOS';


--
-- Name: COLUMN produto.id_produto; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.produto.id_produto IS 'ID DO PRODUTO';


--
-- Name: COLUMN produto.id_sistema; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.produto.id_sistema IS 'SISTEMA DE CADASTRO DO PRODUTO';


--
-- Name: COLUMN produto.nome; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.produto.nome IS 'NOME DO PRODUTO';


--
-- Name: COLUMN produto.prefixo; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.produto.prefixo IS 'PREFIXO PARA INDIVIDUALIZAR A ENTIDADE';


--
-- Name: sistema_cliente; Type: TABLE; Schema: public; Owner: demo
--

CREATE TABLE public.sistema_cliente (
    dt_criacao date NOT NULL,
    id_sistema_cliente numeric(20,0) NOT NULL,
    nome character varying(255) NOT NULL,
    prefixo character varying(255) NOT NULL
);



--
-- Name: TABLE sistema_cliente; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON TABLE public.sistema_cliente IS 'TABELA QUE CONTEM OS SISTEMAS DE CADASTRO DE CLIENTES';


--
-- Name: COLUMN sistema_cliente.dt_criacao; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.sistema_cliente.dt_criacao IS 'DATA DE CRIACAO DO SISTEMA';


--
-- Name: COLUMN sistema_cliente.id_sistema_cliente; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.sistema_cliente.id_sistema_cliente IS 'ID DO SISTEMA DE CADASTRO DE CLIENTE';


--
-- Name: COLUMN sistema_cliente.nome; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.sistema_cliente.nome IS 'NOME';


--
-- Name: COLUMN sistema_cliente.prefixo; Type: COMMENT; Schema: public; Owner: demo
--

COMMENT ON COLUMN public.sistema_cliente.prefixo IS 'PREFIXO PARA INDIVIDUALIZAR A ENTIDADE';


--
-- Data for Name: operacao_disponivel; Type: TABLE DATA; Schema: public; Owner: demo
--

COPY public.operacao_disponivel (especie, id_operacao_disponivel, id_produto, nome, prefixo, tipo_operacao) FROM stdin;
\.


--
-- Data for Name: proc_cliente; Type: TABLE DATA; Schema: public; Owner: demo
--

COPY public.proc_cliente (aposentado, ativo, cep, cnae, codigo, codigo_localizador, documento, dt_atualizacao, dt_entrada, empresa, id_proc_cliente, id_sistema, nome, outros, patrimonio, profissao, renda, score, tipo_cadastro, validado) FROM stdin;
\.


--
-- Data for Name: proc_contrato; Type: TABLE DATA; Schema: public; Owner: demo
--

COPY public.proc_contrato (categoria, codigo, documento_contraparte, dt_entrada, dt_vencimento, id_proc_cliente, id_proc_contrato, id_produto, moeda, nome_contraparte, outros, pais, produto, relacionado, relacionamento, status, valor, valor_entrada, valor_mensal) FROM stdin;
\.


--
-- Data for Name: proc_operacao_realizada; Type: TABLE DATA; Schema: public; Owner: demo
--

COPY public.proc_operacao_realizada (cep, codigo, complemento, documento_contraparte, dt_operacao, especie, hr_operacao, id_operacao_disponivel, id_proc_cliente, id_proc_contrato, id_proc_operacao_realizada, id_produto, nome_contraparte, outros, patrimonio, renda, tipo_operacao, valor, valor_esperado) FROM stdin;
\.


--
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: demo
--

COPY public.produto (id_produto, id_sistema, nome, prefixo) FROM stdin;
1	\N	CPGF	CPGF
2	\N	Conta Salário	CONS
\.


--
-- Data for Name: sistema_cliente; Type: TABLE DATA; Schema: public; Owner: demo
--

COPY public.sistema_cliente (dt_criacao, id_sistema_cliente, nome, prefixo) FROM stdin;
2022-03-23	1	CPGF	CPGF
2022-03-23	2	Servidores	SERV
\.


--
-- Name: operacao_disponivel ak_opedis_sc_0; Type: CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.operacao_disponivel
    ADD CONSTRAINT ak_opedis_sc_0 UNIQUE (prefixo);


--
-- Name: proc_cliente ak_pclien_sc_6; Type: CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.proc_cliente
    ADD CONSTRAINT ak_pclien_sc_6 UNIQUE (codigo);


--
-- Name: proc_contrato ak_pcontr_sc_2; Type: CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.proc_contrato
    ADD CONSTRAINT ak_pcontr_sc_2 UNIQUE (codigo);


--
-- Name: proc_operacao_realizada ak_popere_sc_2; Type: CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.proc_operacao_realizada
    ADD CONSTRAINT ak_popere_sc_2 UNIQUE (codigo);


--
-- Name: produto ak_produt_sc_0; Type: CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT ak_produt_sc_0 UNIQUE (prefixo);


--
-- Name: sistema_cliente ak_siscli_sc_0; Type: CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.sistema_cliente
    ADD CONSTRAINT ak_siscli_sc_0 UNIQUE (prefixo);


--
-- Name: operacao_disponivel pk_opedis; Type: CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.operacao_disponivel
    ADD CONSTRAINT pk_opedis PRIMARY KEY (id_operacao_disponivel);


--
-- Name: proc_cliente pk_pclien; Type: CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.proc_cliente
    ADD CONSTRAINT pk_pclien PRIMARY KEY (id_proc_cliente);


--
-- Name: proc_contrato pk_pcontr; Type: CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.proc_contrato
    ADD CONSTRAINT pk_pcontr PRIMARY KEY (id_proc_contrato);


--
-- Name: proc_operacao_realizada pk_popere; Type: CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.proc_operacao_realizada
    ADD CONSTRAINT pk_popere PRIMARY KEY (id_proc_operacao_realizada);


--
-- Name: produto pk_produt; Type: CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT pk_produt PRIMARY KEY (id_produto);


--
-- Name: sistema_cliente pk_siscli; Type: CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.sistema_cliente
    ADD CONSTRAINT pk_siscli PRIMARY KEY (id_sistema_cliente);


--
-- Name: ix_opedis_sc_0; Type: INDEX; Schema: public; Owner: demo
--

CREATE INDEX ix_opedis_sc_0 ON public.operacao_disponivel USING btree (id_produto);


--
-- Name: ix_pclien_sc_0; Type: INDEX; Schema: public; Owner: demo
--

CREATE INDEX ix_pclien_sc_0 ON public.proc_cliente USING btree (id_sistema);


--
-- Name: ix_pclien_sc_4; Type: INDEX; Schema: public; Owner: demo
--

CREATE INDEX ix_pclien_sc_4 ON public.proc_cliente USING btree (documento);


--
-- Name: ix_pclien_sc_5; Type: INDEX; Schema: public; Owner: demo
--

CREATE INDEX ix_pclien_sc_5 ON public.proc_cliente USING btree (codigo_localizador);


--
-- Name: ix_pcontr_sc_0; Type: INDEX; Schema: public; Owner: demo
--

CREATE INDEX ix_pcontr_sc_0 ON public.proc_contrato USING btree (id_proc_cliente);


--
-- Name: ix_pcontr_sc_1; Type: INDEX; Schema: public; Owner: demo
--

CREATE INDEX ix_pcontr_sc_1 ON public.proc_contrato USING btree (id_produto);


--
-- Name: ix_popere_sc_0; Type: INDEX; Schema: public; Owner: demo
--

CREATE INDEX ix_popere_sc_0 ON public.proc_operacao_realizada USING btree (id_proc_contrato);


--
-- Name: ix_popere_sc_1; Type: INDEX; Schema: public; Owner: demo
--

CREATE INDEX ix_popere_sc_1 ON public.proc_operacao_realizada USING btree (id_operacao_disponivel);


--
-- Name: ix_popere_sc_8; Type: INDEX; Schema: public; Owner: demo
--

CREATE INDEX ix_popere_sc_8 ON public.proc_operacao_realizada USING btree (id_proc_cliente);


--
-- Name: ix_popere_sc_9; Type: INDEX; Schema: public; Owner: demo
--

CREATE INDEX ix_popere_sc_9 ON public.proc_operacao_realizada USING btree (id_produto);


--
-- Name: ix_produt_sc_0; Type: INDEX; Schema: public; Owner: demo
--

CREATE INDEX ix_produt_sc_0 ON public.produto USING btree (id_sistema);


--
-- Name: proc_operacao_realizada fk_opedis_popere; Type: FK CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.proc_operacao_realizada
    ADD CONSTRAINT fk_opedis_popere FOREIGN KEY (id_operacao_disponivel) REFERENCES public.operacao_disponivel(id_operacao_disponivel);


--
-- Name: operacao_disponivel fk_produt_opedis; Type: FK CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.operacao_disponivel
    ADD CONSTRAINT fk_produt_opedis FOREIGN KEY (id_produto) REFERENCES public.produto(id_produto);


--
-- Name: proc_contrato fk_produt_pcontr; Type: FK CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.proc_contrato
    ADD CONSTRAINT fk_produt_pcontr FOREIGN KEY (id_produto) REFERENCES public.produto(id_produto);


--
-- Name: proc_operacao_realizada fk_produt_popere; Type: FK CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.proc_operacao_realizada
    ADD CONSTRAINT fk_produt_popere FOREIGN KEY (id_produto) REFERENCES public.produto(id_produto);


--
-- Name: proc_cliente fk_siscli_pclien; Type: FK CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.proc_cliente
    ADD CONSTRAINT fk_siscli_pclien FOREIGN KEY (id_sistema) REFERENCES public.sistema_cliente(id_sistema_cliente);


--
-- Name: produto fk_siscli_produt; Type: FK CONSTRAINT; Schema: public; Owner: demo
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT fk_siscli_produt FOREIGN KEY (id_sistema) REFERENCES public.sistema_cliente(id_sistema_cliente);


--
-- PostgreSQL database dump complete
--

