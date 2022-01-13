create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint auto_increment not null,
    nome varchar(255) not null,
    ativo boolean,
    primary key (id)
);

insert into tb_categoria(nome, ativo) values ("Técnico", true);
insert into tb_categoria(nome, ativo) values ("rápidos", true);
insert into tb_categoria(nome, ativo) values ("pós", true);
insert into tb_categoria(nome, ativo) values ("reforço", true);
insert into tb_categoria(nome, ativo) values ("idioma", true);

create table tb_curso(
	id bigint auto_increment not null,
    nome varchar (255) not null,
    preco decimal (6,2),
    tempo decimal (2,1),
    periodo varchar(255),
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_curso (nome, preco, tempo, periodo, categoria_id) values ("Informática", 350.00, 2, "manhã", 1);
insert into tb_curso (nome, preco, tempo, periodo, categoria_id) values ("Redes", 200.00, 0.6, "Noturno", 3);
insert into tb_curso (nome, preco, tempo, periodo, categoria_id) values ("Panificação", 100.00, 0.3, "manhã - Tarde ", 2);
insert into tb_curso (nome, preco, tempo, periodo, categoria_id) values ("Élétrica", 750.00, 2, "Noturno", 1);
insert into tb_curso (nome, preco, tempo, periodo, categoria_id) values ("Matematica Básica", 50.00, 1, "manhã-Tarde", 4);
insert into tb_curso (nome, preco, tempo, periodo, categoria_id) values ("Inglês", 350.00, 4, "manhã-Noite", 5);
insert into tb_curso (nome, preco, tempo, periodo, categoria_id) values ("Espanhol", 250.00, 4, "manhã", 5);
insert into tb_curso (nome, preco, tempo, periodo, categoria_id) values ("Auxiliar de Padaria", 120.00, 0.1, "manhã", 2);



select * from tb_curso;

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where nome like "i%";

select * from tb_curso where nome like "%c%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1;