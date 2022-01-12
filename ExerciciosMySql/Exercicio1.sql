create database db_recursoshumanos;

use db_recursoshumanos;

create table tb_funcionarios(
	id bigint auto_increment,
	nome varchar(255) not null,
	salario decimal (8,2) not null,
	vt decimal (6,2) not null,
    vr	decimal (6,2) not null,
    
    primary key (id)
);

INSERT INTO tb_funcionarios(nome, salario, vt, vr) values ("Ricardo de Sa", 2300.00, 180.00, 300.00);
INSERT INTO tb_funcionarios(nome, salario, vt, vr) values ("Fabricio Gomes", 1500.00, 180.00, 300.00);
INSERT INTO tb_funcionarios(nome, salario, vt, vr) values ("Mariana Julia", 9300.00, 180.00, 300.00);
INSERT INTO tb_funcionarios(nome, salario, vt, vr) values ("Lailo da Silva ", 4180.00, 180.00, 300.00);
INSERT INTO tb_funcionarios(nome, salario, vt, vr) values ("Maria José", 3500.00, 180.00, 300.00);

select * from tb_funcionarios;

select nome, salario, vt, vr from tb_funcionarios where salario > 2000.00;

select nome, salario, vt, vr from tb_funcionarios where salario < 2000.00;

select * from tb_funcionarios;

update tb_funcionarios set salario = 3900.00 where id = 1;

select * from tb_ funcionarios;

select * from tb_funcionarios;







