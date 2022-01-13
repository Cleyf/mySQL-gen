create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
	id bigint auto_increment not null,
    nome varchar(255) not null,
    ativo boolean,
    primary key (id)
);

insert into tb_categoria(nome, ativo) values ("materiais", true);
insert into tb_categoria(nome, ativo) values ("ferramentas", true);
insert into tb_categoria(nome, ativo) values ("tintas", true);
insert into tb_categoria(nome, ativo) values ("fixadores", true);
insert into tb_categoria(nome, ativo) values ("fios", true);

create table tb_produto(
	id bigint auto_increment not null,
    nome varchar (255) not null,
    preco decimal (6,2),
    quantidade int,
    datacadastro timestamp,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, preco, quantidade, datacadastro, categoria_id) values ("Tijolos", 23.00, 100, current_date(), 1);
insert into tb_produto (nome, preco, quantidade, datacadastro, categoria_id) values ("Cimento", 82.00, 100, current_date(), 1);
insert into tb_produto (nome, preco, quantidade, datacadastro, categoria_id) values ("Chave de fenda", 9.00, 100, current_date(), 2);
insert into tb_produto (nome, preco, quantidade, datacadastro, categoria_id) values ("Chave Inglesa", 22.00, 100, current_date(), 2);
insert into tb_produto (nome, preco, quantidade, datacadastro, categoria_id) values ("Tinta Branca", 48.00, 100, current_date(), 4);
insert into tb_produto (nome, preco, quantidade, datacadastro, categoria_id) values ("Carretel Metro Fio", 70.00, 100, current_date(), 5);
insert into tb_produto (nome, preco, quantidade, datacadastro, categoria_id) values ("Tinta Azul", 5.00, 100, current_date(), 3);
insert into tb_produto (nome, preco, quantidade, datacadastro, categoria_id) values ("Madeiras", 40.00, 100, current_date(), 1);


select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "c%";

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 1;