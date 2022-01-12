create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int not null,
    preco decimal (7,2) not null,
    marca varchar(255),
    primary key(id)
);

INSERT INTO tb_produtos (nome, quantidade, preco, marca) values ("Celular",100,1900.00,"Samsung");
INSERT INTO tb_produtos (nome, quantidade, preco, marca) values ("Computador Gamer",15,3900.00,"Acer");
INSERT INTO tb_produtos (nome, quantidade, preco, marca) values ("mouse",100,50.00,"Multilaser");
INSERT INTO tb_produtos (nome, quantidade, preco, marca) values ("Caneta",100,1.00,"BIC");
INSERT INTO tb_produtos (nome, quantidade, preco, marca) values ("Carregador",80,80.00,"Samsung");
INSERT INTO tb_produtos (nome, quantidade, preco, marca) values ("Fone Bluetooth",100,150.00,"JBL");
INSERT INTO tb_produtos (nome, quantidade, preco, marca) values ("Monitor",100,900.00,"Samsung");
INSERT INTO tb_produtos (nome, quantidade, preco, marca) values ("Action Figure ",1000,200.00,"Diversos");

select * from tb_produtos;

select nome, quantidade, preco, marca from tb_produtos where preco > 500;

select nome, quantidade, preco, marca from tb_produtos where preco < 500;

update tb_produtos set preco = 1200 where id = 1;

select * from tb_produtos;