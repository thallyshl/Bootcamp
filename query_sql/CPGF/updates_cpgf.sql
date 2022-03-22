update tmp_cpgf set valor = replace (valor, ',','.') where valor like '%,%';

update tmp_cpgf set datat_trasacao = to_date (datat_trasacao, 'DD/MM/YYYY') where  datat_trasacao  like '%/%/%';

alter table tmp_cpgf alter column valor type decimal (20, 2);