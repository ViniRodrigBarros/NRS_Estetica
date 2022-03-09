#Empresa
update empresas 
set nome ="?",endereco ="?" ,telefone ="?" ,intagram ="?" ,email ="?" where id_empresa = 1;

#Pessoas
update pessoas 
set nome ="?",  telefone ="?" ,nascimento =str_to_date('01/01/0000', '%d/%m/%Y') ,email ="?" ,fk_empresa  = 1 where id_pessoa = 1;

#Clientes
update clientes
set obs="?", fk_pessoa = 1 where id_cliente = 1;

#Socios
update socios
set obs = "?", senha = "?", usuario = "?", fk_pessoas = 1  where id_socio = 1;

#Agendamentos 
update agendamentos
set data_hora = str_to_date('01/01/0000', '%d/%m/%Y'), obs= "?", realizado ='0', pago ='0' , preco_total=0, desconto=0, fk_cliente=0, fk_socio =1 where id_agendamentos = 1;

#Servicos
update servicos
set nome="?", tempo = "00:00:00", obs ="?", preco = 0, desconto = 0, fk_socio1 = 1  where  id_servicos = 1;

#Servicos_agedamentos
update servicos_agedamentos
set fk_agendamentos = 1 ,fk_servicos = 1 where id_serviços_agedamentos = 1;