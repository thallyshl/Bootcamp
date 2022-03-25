create table operacao_disponivel (
	especie boolean,
	id_operacao_disponivel int primary key,
	id_produto int,
	nome varchar (200),
	prefixo varchar(4),
	tipo_operacao int,
	foreign key (id_produto) references model_monitor.produto (id_produto),
	unique (prefixo)
);
insert into operacao_disponivel (especie, id_operacao_disponivel, id_produto, nome, prefixo, tipo_operacao)
values
	(false, 101, 1, 'COMP A/V-SOL DISP C/CLI-R$ ANT VENC', 'CDCL', 2),
	(false, 102, 1, 'COMPRA A/V - INT$ - APRES', 'CIAP',2),
	(false, 103, 1, 'COMPRA A/V - R$ - APRES', 'CRPR',2),
	(false, 104, 1, 'CPP LOJISTA TRF P/FATURA - real', 'CPPL', 2),
	(true, 105, 1, 'SAQUE MANUAL-CARTOES BB NA AGENCIA', 'SMCB', 1),
	(true, 106, 1, 'SAQUE BB B24HORAS-SOL C/CLIENTE', 'SB24', 1),
	(true, 107, 1, 'SAQUE - INT$ - APRES', 'SIAP', 1),
	(true, 108, 1, 'SAQUE CASH/ATM BB', 'SCBB', 1),
	(false, 201, 2, 'RECEBIMENTO SALARIO', 'RECS', 1);