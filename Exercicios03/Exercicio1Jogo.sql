create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
    vocacao varchar(255) not null,
    especialidade varchar(255) not null,
	
    primary key (id)
);

insert into tb_classe (vocacao, especialidade) values ("Warrior", "Tanque");
insert into tb_classe (vocacao, especialidade) values ("Archer", "Ataque Físico a Distância");
insert into tb_classe (vocacao, especialidade) values ("Mage", "Ataque Magico a Distância");
insert into tb_classe (vocacao, especialidade) values ("Fairy", "Suporte, Buffs, Proteção");
insert into tb_classe (vocacao, especialidade) values ("Assassin", "Dano Físico Melee");

select * from tb_classe;

create table tb_personagens(
	id bigint auto_increment,
    nome varchar(255) not null,
    sexo varchar(255) not null,
    habilidade varchar (255) not null,
    ataque int not null,
    defesa int not null,
    classe_id bigint,
    primary key (id),
    foreign key (classe_id) references tb_classe (id)
    
);
 
 select * from tb_personagens;
 
insert into tb_personagens (nome, sexo, habilidade, ataque, defesa, classe_id) values ("Sighart", "Masculino", "thorn armor", 1000, 3200, 1);
insert into tb_personagens (nome, sexo, habilidade, ataque, defesa, classe_id) values ("Helena", "Feminino", "Light Shield", 1800, 3000, 1);
insert into tb_personagens (nome, sexo, habilidade, ataque, defesa, classe_id) values ("Vicent", "Masculino", "Head shot", 2800, 2200, 2);
insert into tb_personagens (nome, sexo, habilidade, ataque, defesa, classe_id) values ("Alice", "Feminino", "Mystic Arrow", 3200, 2000, 2);
insert into tb_personagens (nome, sexo, habilidade, ataque, defesa, classe_id) values ("Arartor", "Masculino", "Ice Rain", 4000, 1200, 3);
insert into tb_personagens (nome, sexo, habilidade, ataque, defesa, classe_id) values ("Mylene", "Feminino", "Holy Shield", 800, 2000, 4);
insert into tb_personagens (nome, sexo, habilidade, ataque, defesa, classe_id) values ("Pandora", "Feminino", "Fireball", 3900, 2100, 3);
insert into tb_personagens (nome, sexo, habilidade, ataque, defesa, classe_id) values ("Edgar", "Masculino", "Hunter", 3000, 2400, 5);
   
select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "C%";

select * from tb_personagens where nome like "%C%";

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id;

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_classe.id = 2;
 
