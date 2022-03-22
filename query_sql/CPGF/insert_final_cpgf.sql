CREATE TABLE public."tmp_cpgf" (
    "codigo_orgao_superior" integer NULL,
    "nome_orgao_superior" varchar(1024) NULL,
    "codigo_orgao" integer NULL,
    "nome_orgao" varchar(1024) NULL,
    "codigo_unidade_gestora" integer NULL,
    "nome_unidade_gestora" varchar(1024) NULL,
    "ano" integer NULL,
    "mes" integer NULL,
    "cpf_portador" varchar(1024) NULL,
    "nome_portador" varchar(1024) NULL,
    "documento_favorecido" varchar(1024) NULL,
    "nome_favorecido" varchar(1024) NULL,
    "transacao" varchar(1024) NULL,
    "datat_trasacao" varchar(1024) NULL,
    "valor" varchar(1024) NULL
);
CREATE TABLE public."final_cpgf" (
    "codigo_orgao_superior" integer NULL,
    "nome_orgao_superior" varchar(1024) NULL,
    "codigo_orgao" integer NULL,
    "nome_orgao" varchar(1024) NULL,
    "codigo_unidade_gestora" integer NULL,
    "nome_unidade_gestora" varchar(1024) NULL,
    "ano" integer NULL,
    "mes" integer NULL,
    "cpf_portador" varchar(1024) NULL,
    "nome_portador" varchar(1024) NULL,
    "documento_favorecido" varchar(1024) NULL,
    "nome_favorecido" varchar(1024) NULL,
    "transacao" varchar(1024) NULL,
    "datat_trasacao" date NULL,
    "valor" decimal(20,2) NULL
);
insert into final_cpgf
select 
    codigo_orgao_superior,
    nome_orgao_superior,
    codigo_orgao,
    nome_orgao,
    codigo_unidade_gestora,
    nome_unidade_gestora,
    ano,
    mes,
    cpf_portador,
    nome_portador,
    documento_favorecido,
    nome_favorecido,
    transacao,
    to_date (datat_trasacao, 'YYYY-MM-DD'),
    cast (valor as decimal (20,2))
from tmp_cpgf;