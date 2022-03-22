select count(*) from public.tmp_ceis;

select count(*) from public.final_ceis;

select * from final_ceis;

select * from tmp_ceis;

select count(data_do_transito_em_julgado) from tmp_ceis where data_do_transito_em_julgado like '%/%/%';