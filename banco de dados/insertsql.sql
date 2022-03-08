insert into empresas (nome, endereco, telefone, intagram, email) values ('?', '?', '?', '?', '?');
insert into pessoas (nome, telefone, email, nascimento, fk_empresa) values('?', '?', '?', str_to_date('01/01/0000', '%d/%m/%Y'), 1);
insert into clientes (obs, fk_pessoa) values("?",1);
insert into socios (obs, senha, usuario, fk_pessoas) values('?','?','?',1);
insert into agendamentos ( obs, realizado, pago, preço_total, desconto, fk_cliente, fk_socio) values ('?','0',0,0,0,1,1);
insert into agendamentos (data_hora) values ( STR_TO_DATE('01/01/2000 00:00:00','%d/%m/%Y h:%i:%s')); //erro
insert into servicos(nome ,tempo ,obs , preço ,desconto, fk_socio1) values ('?',"00:00:00",'?',1,1,1);
insert into servicos_agedamentos(fk_agendamentos,fk_servicos) values(1,1);