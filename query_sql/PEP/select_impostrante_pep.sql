select * from tmp_pep;

select count(*) from tmp_pep;

select * from final_pep;

select count(*) from final_pep;

select data_inicio_exercicio from tmp_pep;
select count(data_inicio_exercicio) from tmp_pep;
select count(data_fim_carencia) from tmp_pep;
select count(data_inicio_exercicio) from tmp_pep;
select count(distinct(data_inicio_exercicio)) from tmp_pep;
select distinct(data_fim_carencia) from tmp_pep where data_fim_carencia not like '%/%/%';
select count(data_fim_carencia) from tmp_pep where data_fim_carencia like 'Não informada';
select count(data_fim_exercicio) from tmp_pep where data_fim_exercicio like 'Não informada';


