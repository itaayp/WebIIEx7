CREATE DATABASE WEB2;

USE WEB2;

create table tb_usuario (
id_usuario serial primary key,
login_usuario varchar(50),
senha_usuario varchar(50),
nome_usuario varchar(100)
);

insert into tb_usuario (login_usuario, senha_usuario, nome_usuario) values ('tiago', 'senha', 'Tiago');
insert into tb_usuario (login_usuario, senha_usuario, nome_usuario) values ('itay', 'senha', 'Itay');
insert into tb_usuario (login_usuario, senha_usuario, nome_usuario) values ('admin', 'admin', 'Administrador');


create table tb_estado (
id_estado serial primary key,
nome_estado varchar(100)
);

insert into tb_estado (id_estado, nome_estado) values (1, 'PR');
insert into tb_estado (id_estado, nome_estado) values (2, 'SP');


create table tb_cidade (
id_cidade serial primary key,
nome_cidade varchar(100)
);

insert into tb_cidade (id_cidade, nome_cidade) values (1, 'Curitiba');
insert into tb_cidade (id_cidade, nome_cidade) values (2, 'São Paulo');


DROP table tb_cliente;

create table tb_cliente (
id_cliente serial primary key,
cpf_cliente varchar(100),
nome_cliente varchar(100),
email_cliente varchar(100),
data_cliente date,
rua_cliente varchar(100),
nr_cliente integer,
cep_cliente char(8),
id_cidade integer,
id_estado integer
);



insert into tb_cliente (nome_cliente, cpf_cliente, email_cliente, data_cliente, cep_cliente, rua_cliente, nr_cliente, id_cidade, id_estado) values (
'Tiago', '2456856', 'tiago@email.com.br', '1986-01-30', '52545548', 'Quadra QNN 5 Conjunto E', 745, 1, 1);

insert into tb_cliente (nome_cliente, cpf_cliente, email_cliente, data_cliente, cep_cliente, rua_cliente, nr_cliente, id_cidade, id_estado) values (
'Itay', '2456856', 'itay@email.com.br', '1986-01-30', '52545548', 'Quadra QNN 5 Conjunto E', 745, 1, 1);

insert into tb_cliente (nome_cliente, cpf_cliente, email_cliente, data_cliente, cep_cliente, rua_cliente, nr_cliente, id_cidade, id_estado) values (
'Herik', '2456856', 'herik@email.com.br', '1986-01-30', '52545548', 'Quadra QNN 5 Conjunto E', 745, 1, 1);

insert into tb_cliente (nome_cliente, cpf_cliente, email_cliente, data_cliente, cep_cliente, rua_cliente, nr_cliente, id_cidade, id_estado) values (
'Razer', '2456856', 'razer@email.com.br', '1986-01-30', '52545548', 'Quadra QNN 5 Conjunto E', 745, 1, 1);

insert into tb_cliente (nome_cliente, cpf_cliente, email_cliente, data_cliente, cep_cliente, rua_cliente, nr_cliente, id_cidade, id_estado) values (
'Rafaela', '2456856', 'rafaela@email.com.br', '1986-01-30', '52545548', 'Quadra QNN 5 Conjunto E', 745, 1, 1);

insert into tb_cliente (nome_cliente, cpf_cliente, email_cliente, data_cliente, cep_cliente, rua_cliente, nr_cliente, id_cidade, id_estado) values (
'Neves', '2456856', 'neves@email.com.br', '1986-01-30', '52545548', 'Quadra QNN 5 Conjunto E', 745, 1, 1);

insert into tb_cliente (nome_cliente, cpf_cliente, email_cliente, data_cliente, cep_cliente, rua_cliente, nr_cliente, id_cidade, id_estado) values (
'Sandramara', '2456856', 'sandramara@email.com.br', '1986-01-30', '52545548', 'Quadra QNN 5 Conjunto E', 745, 1, 1);

insert into tb_cliente (nome_cliente, cpf_cliente, email_cliente, data_cliente, cep_cliente, rua_cliente, nr_cliente, id_cidade, id_estado) values (
'Jerozina', '2456856', 'jeroniza@email.com.br', '1986-01-30', '52545548', 'Quadra QNN 5 Conjunto E', 745, 1, 1);

insert into tb_cliente (nome_cliente, cpf_cliente, email_cliente, data_cliente, cep_cliente, rua_cliente, nr_cliente, id_cidade, id_estado) values (
'Tommy', '2456856', 'tommy@email.com.br', '1986-01-30', '52545548', 'Quadra QNN 5 Conjunto E', 745, 1, 1);

insert into tb_cliente (nome_cliente, cpf_cliente, email_cliente, data_cliente, cep_cliente, rua_cliente, nr_cliente, id_cidade, id_estado) values (
'Claisa', '2456856', 'claisa@email.com.br', '1986-01-30', '52545548', 'Quadra QNN 5 Conjunto E', 745, 1, 1);

insert into tb_cliente (nome_cliente, cpf_cliente, email_cliente, data_cliente, cep_cliente, rua_cliente, nr_cliente, id_cidade, id_estado) values (
'Bianca', '2456856', 'bianca@email.com.br', '1986-01-30', '52545548', 'Quadra QNN 5 Conjunto E', 745, 1, 1);