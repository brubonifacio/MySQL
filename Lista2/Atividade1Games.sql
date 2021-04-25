create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
categoria varchar(255) not null,
censura varchar(255) not null,
descricao varchar(255) not null,
primary key(id)
);

insert tb_classe(categoria, censura, descricao) values ("RPG", "Maiores de 4 anos", "Aventura");
insert tb_classe(categoria, censura, descricao) values ("Ação", "Maiores de 8 anos", "Aventura");
insert tb_classe(categoria, censura, descricao) values ("Esporte", "Livre", "Atividade física");
insert tb_classe(categoria, censura, descricao) values ("Estratégia", "Maiores de 12 anos", "Memória");
insert tb_classe(categoria, censura, descricao) values ("Corrida", "Livre", "Carro");
insert tb_classe(categoria, censura, descricao) values ("Simulação", "Livre", "Vida");
insert tb_classe(categoria, censura, descricao) values ("Arcade", "Maiores de 8 anos", "Quebra cabeça");
insert tb_classe(categoria, censura, descricao) values ("Educacional", "Livre", "Aprendizado");


select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
ataque bigint not null,
defesa bigint not null,
habilidade varchar(255) not null,
personagem_id bigint not null,
foreign key(personagem_id) references tb_classe(id),
primary key(id)
);

insert tb_personagem(nome, ataque, defesa, habilidade, personagem_id) values ("Mermaid", 2500.00, 1000.00, "Arqueira", 1);
insert tb_personagem(nome, ataque, defesa, habilidade, personagem_id) values ("Braia", 1000.00, 2500.00, "Deus dos rachas", 2);
insert tb_personagem(nome, ataque, defesa, habilidade, personagem_id) values ("Neymar", 2000.00, 1500.00, "Cai cai balão", 3);
insert tb_personagem(nome, ataque, defesa, habilidade, personagem_id) values ("Rainha", 1000.00, 1000.00, "Persistência", 4);
insert tb_personagem(nome, ataque, defesa, habilidade, personagem_id) values ("Mario", 3000.00, 2000.00, "Conserta encanamentos", 5);
insert tb_personagem(nome, ataque, defesa, habilidade, personagem_id) values ("CJ", 2000.00, 3000.00, "Assalto", 6);
insert tb_personagem(nome, ataque, defesa, habilidade, personagem_id) values ("Pac-man", 1000.00, 3000.00, "Comer", 7);
insert tb_personagem(nome, ataque, defesa, habilidade, personagem_id) values ("Peão", 1000.00, 1000.00, "Nenhum", 8);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like 'C%';

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.personagem_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.personagem_id where tb_personagem.habilidade = "Arqueira";

-- select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id where tb_categoria.tipo = "Cosméticos";









