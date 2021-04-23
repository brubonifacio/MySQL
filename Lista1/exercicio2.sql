create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar (100) not null,
marca varchar (100) not null,
preco float not null,
estoque bigint,
codigo varchar (100) not null,
primary key(id)

);

insert into tb_produtos (nome, marca, preco, estoque, codigo) values ("Acholatado", "Nescau", 8.00 ,700, "NES008");
insert into tb_produtos (nome, marca, preco, estoque, codigo) values ("Pão de forma", "Pullman", 5.00 ,300, "PAO001");
insert into tb_produtos (nome, marca, preco, estoque, codigo) values ("Bolacha", "Club Social", 3.00 ,900, "BOL009");
insert into tb_produtos (nome, marca, preco, estoque, codigo) values ("Miojo", "Nissin", 1.00 ,1000, "MI0000");
insert into tb_produtos (nome, marca, preco, estoque, codigo) values ("Pipoca", "Yoki", 3.00 ,800, "PIP004");
insert into tb_produtos (nome, marca, preco, estoque, codigo) values ("Goiabinha", "Bauducco", 4.00 ,700, "GO006");
insert into tb_produtos (nome, marca, preco, estoque, codigo) values ("Salgadinho", "Doritos", 10.00 ,400, "DOR004");
insert into tb_produtos (nome, marca, preco, estoque, codigo) values ("Agua", "Bonafont", 2.00 ,700, "AGU009");

select * from tb_produtos;

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set nome = "Achocolatado" where id = 2;

