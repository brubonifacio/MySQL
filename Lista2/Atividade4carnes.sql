create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255) not null,
ativo boolean not null,
primary key(id)
);

insert tb_categoria(categoria, ativo) values ("Bovino", true);
insert tb_categoria(categoria, ativo) values ("Suíno", false);
insert tb_categoria(categoria, ativo) values ("Aves", true);
insert tb_categoria(categoria, ativo) values ("Embutido", true);
insert tb_categoria(categoria, ativo) values ("Fruto do Mar", false);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
valor bigint not null,
quantidade int not null,
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id),
primary key(id)
);

insert tb_produto(nome, valor, quantidade, categoria_id) values ("Miolo de Acém", 30.00, 30, 1);
insert tb_produto(nome, valor, quantidade, categoria_id) values ("Bacon", 20.00, 30, 2);
insert tb_produto(nome, valor, quantidade, categoria_id) values ("Asa de frango", 13.00, 30, 3);
insert tb_produto(nome, valor, quantidade, categoria_id) values ("Salsicha", 16.00, 30, 4);
insert tb_produto(nome, valor, quantidade, categoria_id) values ("Salmão", 40.00, 30, 5);

select * from tb_produto;

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where nome Like "C%";

select nome, valor, quantidade, tb_categoria.categoria as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria from tb_produto inner join tb_categoria on  tb_categoria.id = tb_produto.categoria_id;

select nome, valor, quantidade, tb_categoria.categoria as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria from tb_produto inner join tb_categoria on  tb_categoria.id = tb_produto.categoria_id where tb_categoria.categoria = "Aves";
