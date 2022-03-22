select * from tmp_cpgf;

select * from final_cpgf;

select count(*) from final_cpgf;

select count(*) from tmp_cpgf;

select count(datat_trasacao) from tmp_cpgf where datat_trasacao like '%';

select to_date(datat_trasacao, 'dd/mm/yyyy') from tmp_cpgf;

select count(valor) from tmp_cpgf where valor like '%,%';