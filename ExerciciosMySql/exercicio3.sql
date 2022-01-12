create database db_escola;

use db_escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade int not null,
    genero varchar(255) not null,
    nota decimal(2.1) not null,
    
    primary key(id)
);

INSERT INTO tb_estudantes (nome, idade, genero, nota) values ("Ana Catarina", 12, "Feminino", "8");
INSERT INTO tb_estudantes (nome, idade, genero, nota) values ("Maria Luiza", 17, "Feminino", "6");
INSERT INTO tb_estudantes (nome, idade, genero, nota) values ("Luis Henrique", 12, "Masculino", "3");
INSERT INTO tb_estudantes (nome, idade, genero, nota) values ("João Pedro", 16, "Masculino", "9");
INSERT INTO tb_estudantes (nome, idade, genero, nota) values ("Helena Dutra", 12, "Feminino", "10");
INSERT INTO tb_estudantes (nome, idade, genero, nota) values ("Lucas Vinicius", 16, "Masculino", "5");
INSERT INTO tb_estudantes (nome, idade, genero, nota) values ("Douglas", 17, "Masculino", "4.5");
INSERT INTO tb_estudantes (nome, idade, genero, nota) values ("Teresa de Jesus", 16, "Feminino", "10");

select * from tb_estudantes;

select nome, idade, genero, nota from tb_estudantes where nota > 7;

select nome, idade, genero, nota from tb_estudantes where nota < 7;

update tb_estudantes set nota = 8 where id = 3;

select * from tb_estudantes;

