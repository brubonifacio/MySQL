create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(255) not null,
categoria varchar(255) not null,
contem varchar(255) not null,
primary key(id)
);

insert tb_categoria(tamanho, categoria, contem) value ("Grande", "Salgada", "Derivado de leite");
insert tb_categoria(tamanho, categoria, contem) value ("Pequena", "Salgada", "Derivado de leite");
insert tb_categoria(tamanho, categoria, contem) value ("Brotinho", "Doce", "Derivado de leite");
insert tb_categoria(tamanho, categoria, contem) value ("Grande", "Vegana", "Sem derivado de leite");
insert tb_categoria(tamanho, categoria, contem) value ("Média", "Doce", "Derivado de leite");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
valor bigint not null,
sabor varchar (255) not null,
borda varchar (255) not null,
pizza_id bigint not null,
foreign key(pizza_id) references tb_categoria(id),
primary key(id)
);

insert tb_pizza(nome, valor, sabor, borda, pizza_id) values ("Toscana", 40.00, "Mussarela e calabresa", "com catupiry", 1);
insert tb_pizza(nome, valor, sabor, borda, pizza_id) values ("Carijó", 25.00, "Frango com catupiry", "sem recheio", 2);
insert tb_pizza(nome, valor, sabor, borda, pizza_id) values ("Prestigio", 30.00, "Chocolate com coco", "com doce leite", 3);
insert tb_pizza(nome, valor, sabor, borda, pizza_id) values ("Vegane", 37.00, "Brocolis, abobrinha e alho", "sem recheio", 4);
insert tb_pizza(nome, valor, sabor, borda, pizza_id) values ("Portuguesa", 30.00, "Mussarela, ovo, cebola, presunto e azeitona", "com catupiry", 5);
insert tb_pizza(nome, valor, sabor, borda, pizza_id) values ("4 queijos", 40.00, "Mussarela, catupiry, parmesão provolone", "sem recheio", 6);
insert tb_pizza(nome, valor, sabor, borda, pizza_id) values ("Pepperoni", 50.00, "Mussarela e pepperoni", "com cheddar", 7);
insert tb_pizza(nome, valor, sabor, borda, pizza_id) values ("Marguerita", 40.00, "Mussarela, parmesão, majericão e tomate", "com catupiry", 8);


select * from tb_pizza;

select * from tb_pizza where valor > 45.00;

select * from tb_pizza where valor between 29.00 and 60.00;

select * from tb_pizza where nome like 'C%';

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id where tb_categoria.categoria = "Doce";


