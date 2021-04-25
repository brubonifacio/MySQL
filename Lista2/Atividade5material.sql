create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key(id)
);

insert tb_categoria(descricao, ativo) values ("Areia e Peedras", false);
insert tb_categoria(descricao, ativo) values ("Piso", true);
insert tb_categoria(descricao, ativo) values ("Blocos e Tijolos", true);
insert tb_categoria(descricao, ativo) values ("Cimentos e Argamassas", false);
insert tb_categoria(descricao, ativo) values ("Gessos", true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
tipo varchar(255) not null,
cor varchar(255) not null,
valor bigint not null,
material_id bigint,
foreign key (material_id) references tb_categoria(id),
primary key(id)
);

insert tb_produto(nome, tipo, cor, valor, material_id) values ("Areia", "Fina", "Bege", 3.00,1);
insert tb_produto(nome, tipo, cor, valor, material_id) values ("Porcelanato", "Grande", "Branco", 13.00,2);
insert tb_produto(nome, tipo, cor, valor, material_id) values ("Bloco", " De barro", "Marron", 7.00,3);
insert tb_produto(nome, tipo, cor, valor, material_id) values ("Concreto", "Pronto", "Cinza", 10.00,4);
insert tb_produto(nome, tipo, cor, valor, material_id) values ("Gesso", "Em pó", "Branco", 20.00,5);

select * from tb_produto;

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where nome like "C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.material_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.material_id where tb_categoria.descricao = "Gessos";

