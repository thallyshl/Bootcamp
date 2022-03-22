select * from tmp_serv_SIAPE_Afastamento;

select * from final_serv_SIAPE_Afastamento;

select id_servidor , count(*) from final_serv_SIAPE_Afastamento group by id_servidor;

select count(distinct(id_servidor)) from final_serv_SIAPE_Afastamento;

select count(*) from final_serv_SIAPE_Afastamento;