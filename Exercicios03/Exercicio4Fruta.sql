create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
	id bigint auto_increment not null,
    nome varchar(255) not null,
    ativo boolean,
    primary key (id)
);

insert into tb_categoria(nome, ativo) values ("fruta", true);
insert into tb_categoria(nome, ativo) values ("legumes", true);
insert into tb_categoria(nome, ativo) values ("verduras", true);
insert into tb_categoria(nome, ativo) values ("grãos", true);
insert into tb_categoria(nome, ativo) values ("Suco natural", true);

create table tb_produto(
	id bigint auto_increment not null,
    nome varchar (255) not null,
    preco decimal (6.2),
    quantidade int,
    dtvalidade date,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, preco, quantidade, dtvalidade, categoria_id) values ("maça", 9.00, 100, "2022-01-13", 1);
insert into tb_produto (nome, preco, quantidade, dtvalidade, categoria_id) values ("Jaca", 62.00, 100, "2022-01-13", 1);
insert into tb_produto (nome, preco, quantidade, dtvalidade, categoria_id) values ("Couve-Flor", 4.00, 100, "2022-01-13", 2);
insert into tb_produto (nome, preco, quantidade, dtvalidade, categoria_id) values ("brócolis", 6.00, 100, "2022-01-13", 2);
insert into tb_produto (nome, preco, quantidade, dtvalidade, categoria_id) values ("alface", 1.00, 100, "2022-01-13", 3);
insert into tb_produto (nome, preco, quantidade, dtvalidade, categoria_id) values ("Aveia", 54.00, 100, "2022-01-13", 4);
insert into tb_produto (nome, preco, quantidade, dtvalidade, categoria_id) values ("Amaranto", 70.00, 100, "2022-01-13", 4);
insert into tb_produto (nome, preco, quantidade, dtvalidade, categoria_id) values ("Suco Laranja", 5.00, 100, "2022-01-13", 5);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "c%";

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 2;
