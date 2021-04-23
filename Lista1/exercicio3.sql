create database db_escola;

use db_escola;

create table tb_notas(
id bigint auto_increment,
nome varchar (100) not null,
sobrenome varchar (100) not null,
idade bigint,
matricula float not null,
media float not null,
primary key(id)

);

insert into tb_notas (nome, sobrenome, idade, matricula, media) values ("Maria Julia", "Bonifácio", 4, 6000, 10);
insert into tb_notas (nome, sobrenome, idade, matricula, media) values ("Bruna", "Bonifácio", 25, 300, 10);
insert into tb_notas (nome, sobrenome, idade, matricula, media) values ("Jonathan", "dos Santos", 23, 200, 10);
insert into tb_notas (nome, sobrenome, idade, matricula, media) values ("Tomioka", "Gyuu", 1, 500, 6);
insert into tb_notas (nome, sobrenome, idade, matricula, media) values ("Tia", "Me", 60, 900, 8);
insert into tb_notas (nome, sobrenome, idade, matricula, media) values ("Amanda", "Noyori", 28, 7000, 4);
insert into tb_notas (nome, sobrenome, idade, matricula, media) values ("Livia", "Amorin", 27, 400, 8);
insert into tb_notas (nome, sobrenome, idade, matricula, media) values ("Joao", "da Silva", 47, 900, 9);

select * from tb_notas;

select * from tb_notas where media > 7;

select * from tb_notas where media < 7;
