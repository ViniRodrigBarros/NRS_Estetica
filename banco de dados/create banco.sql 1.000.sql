create database nrs_estetica1
default character set utf8
default collate utf8_general_ci;

create table empresas(
nome varchar(255),
endereco varchar(255),
telefone varchar(50),
intagram varchar(255),
email varchar(255),
logo blob,
id_empresa int not null auto_increment primary key );

create table pessoas(
nome varchar(255),
telefone varchar(50),
email varchar(255),
nascimento date,
id_pessoa int not null auto_increment primary key, 
fk_empresa int);

ALTER TABLE `nrs_estetica1`.`pessoas` 
ADD INDEX `fk_empresa_idx` (`fk_empresa` ASC) VISIBLE;
;
ALTER TABLE `nrs_estetica1`.`pessoas` 
ADD CONSTRAINT `fk_empresa`
  FOREIGN KEY (`fk_empresa`)
  REFERENCES `nrs_estetica1`.`empresas` (`id_empresa`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

create table clientes(
obs text(500),
id_cliente int not null auto_increment primary key,
fk_pessoa int);

ALTER TABLE `nrs_estetica1`.`clientes` 
ADD INDEX `fk_pessoa_idx` (`fk_pessoa` ASC) VISIBLE;
;
ALTER TABLE `nrs_estetica1`.`clientes` 
ADD CONSTRAINT `fk_pessoa`
  FOREIGN KEY (`fk_pessoa`)
  REFERENCES `nrs_estetica1`.`pessoas` (`id_pessoa`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

create table socios(
obs text(500),
senha varchar(50),
usuario varchar(50),
id_socio int not null auto_increment primary key,
fk_pessoas int);

ALTER TABLE `nrs_estetica1`.`socios` 
ADD INDEX `fk_pessoas_idx` (`fk_pessoas` ASC) VISIBLE;
;
ALTER TABLE `nrs_estetica1`.`socios` 
ADD CONSTRAINT `fk_pessoas`
  FOREIGN KEY (`fk_pessoas`)
  REFERENCES `nrs_estetica1`.`pessoas` (`id_pessoa`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

create table agendamentos( 
data_hora timestamp,
obs text(500),
realizado boolean,
pago boolean,
preco_total float,
desconto float,
id_agendamentos int not null auto_increment primary key,
fk_cliente int,
fk_socio int);

ALTER TABLE `nrs_estetica1`.`agendamentos` 
ADD INDEX `fk_socio_idx` (`fk_socio` ASC) VISIBLE;
;
ALTER TABLE `nrs_estetica1`.`agendamentos` 
ADD CONSTRAINT `fk_socio`
  FOREIGN KEY (`fk_socio`)
  REFERENCES `nrs_estetica1`.`socios` (`id_socio`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

create table servicos( 
nome varchar(255),
tempo time,
obs text(500),
preco float,
desconto float,
id_servicos int not null auto_increment primary key,
fk_socio1 int);

ALTER TABLE `nrs_estetica1`.`servicos` 
ADD INDEX `fk_socio1_idx` (`fk_socio1` ASC) VISIBLE;
;
ALTER TABLE `nrs_estetica1`.`servicos` 
ADD CONSTRAINT `fk_socio1`
  FOREIGN KEY (`fk_socio1`)
  REFERENCES `nrs_estetica1`.`socios` (`id_socio`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
create table servicos_agedamentos( 
id_serviços_agedamentos int not null auto_increment primary key,
fk_agendamentos int,
fk_servicos int);

ALTER TABLE `nrs_estetica1`.`servicos_agedamentos` 
ADD INDEX `fk_servicos1_idx` (`fk_servicos` ASC) VISIBLE;
;
ALTER TABLE `nrs_estetica1`.`servicos_agedamentos` 
ADD CONSTRAINT `fk_servicos2`
  FOREIGN KEY (`fk_servicos`)
  REFERENCES `nrs_estetica1`.`servicos` (`id_servicos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `nrs_estetica1`.`servicos_agedamentos` 
ADD INDEX `fk_agendamentos2_idx` (`fk_agendamentos` ASC) VISIBLE;
;
ALTER TABLE `nrs_estetica1`.`servicos_agedamentos` 
ADD CONSTRAINT `fk_agendamentos2`
  FOREIGN KEY (`fk_agendamentos`)
  REFERENCES `nrs_estetica1`.`agendamentos` (`id_agendamentos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

