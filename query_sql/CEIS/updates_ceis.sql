update tmp_ceis  set data_do_transito_em_julgado = NULL where data_do_transito_em_julgado = '';

update tmp_ceis  set data_publicacao  = NULL where data_do_transito_em_julgado = '';