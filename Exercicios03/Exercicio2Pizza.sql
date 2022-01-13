create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    cardapio varchar(255) not null,
	ativo boolean not null,
    primary key (id)
);

insert into tb_categoria (cardapio, ativo) values ("Pizza", true);
insert into tb_categoria (cardapio, ativo) values ("Pizza Doce", true);
insert into tb_categoria (cardapio, ativo) values ("Refrigerante", true);
insert into tb_categoria (cardapio, ativo) values ("Cerveja", true);
insert into tb_categoria (cardapio, ativo) values ("Coxinha", true);

select * from tb_categoria;

create table tb_pizza(
	id bigint auto_increment,
    sabor varchar(255) not null,
    borda varchar(255),
    preco decimal (4,2)not null,
    tipo varchar (255)not null,
    categoria_id bigint,
    primary key (id),
	FOREIGN KEY (categoria_id) references tb_categoria (id)
);

select * from tb_pizza;

insert into tb_pizza (sabor, borda, preco, tipo, categoria_id) values ("Pizza-Mussarela","Recheada",40.00,"Pizza Salgada",1);
insert into tb_pizza (sabor, borda, preco, tipo, categoria_id) values ("Pizza-Calabresa","Recheada",40.00,"Pizza Salgada",1);
insert into tb_pizza(sabor, borda, preco, tipo, categoria_id) values ("Coxinha","null",5.00,"Comida",5);
insert into tb_pizza(sabor, borda, preco, tipo, categoria_id) values ("Pizza Brigadeiro","Comum", 70.00,"Pizza Doce",2);
insert into tb_pizza(sabor, borda, preco, tipo, categoria_id) values ("Pizza Meio-a-Meio","Recheada",47.00,"Pizza Salgada",1);
insert into tb_pizza(sabor, borda, preco, tipo, categoria_id) values ("Coca-Cola ","null",16.00,"Bebida",3);
insert into tb_pizza(sabor, borda, preco, tipo, categoria_id) values ("Pizza Prestigio","comum",70.00,"Pizza Doce",2);
insert into tb_pizza(sabor, borda, preco, tipo, categoria_id) values ("Skol-Litrão","null",15.00,"Bebida",4);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like "c%";

select * from tb_pizza where sabor like "%c%";

select tb_pizza.sabor, tb_pizza.preco, tb_pizza.tipo, tb_categoria.cardapio
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza where categoria_id = 2;


