create database db_RH_empresas;

use db_RH_empresa;

create table tb_produtos(
id bigint auto_increment,
nome varchar (100) not null,
sobrenome varchar (100) not null,
salario float not null,
profissao varchar (100) not null,
ativo boolean not null,
primary key(id)

);

rename table tb_produtos to tb_funcionarios;

-- Inserir uma informação na tabela
insert into tb_produtos (nome, sobrenome, salario, profissao, ativo) values ("Bruna", "Bonifácio", 2000.00, "desenvolvedora", true);
insert into tb_produtos (nome, sobrenome, salario, profissao, ativo) values ("Maria", "Júlia", 1000.00, "vendedora", false);
insert into tb_produtos (nome, sobrenome, salario, profissao, ativo) values ("Jhonatan", "Souza", 2000.00, "desenvolvedor", false);
insert into tb_produtos (nome, sobrenome, salario, profissao, ativo) values ("Amanda", "Noyori", 2000.00, "desenvolvedora", true);
insert into tb_produtos (nome, sobrenome, salario, profissao, ativo) values ("Livia", "Amorim", 3000.00, "vendedora", true);


-- Buscar um produto
select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000.00;

select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set salario = 1500.00 where id = 5;





