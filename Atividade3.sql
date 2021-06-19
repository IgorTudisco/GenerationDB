create database db_escola;

use db_escola;

create table tb_estudantes (
	id_estudante bigint (5) auto_increment,
    nome varchar (20) not null,
    ano varchar (20) not null,
    nota float not null,
    matriculado boolean,
    primary key (id_estudante)
);

insert into tb_estudantes (nome, ano, nota, matriculado) VALUES ("Denise", "3° ano", 9.5, true);
insert into tb_estudantes (nome, ano, nota, matriculado) VALUES ("Felipe", "2° ano", 4.0, true);
insert into tb_estudantes (nome, ano, nota, matriculado) VALUES ("Bryan", "1° ano", 8.7, true);
insert into tb_estudantes (nome, ano, nota, matriculado) VALUES ("Liza", "1° ano", 7, true);
insert into tb_estudantes (nome, ano, nota, matriculado) VALUES ("Joel", "8° ano", 5.5, true);
insert into tb_estudantes (nome, ano, nota, matriculado) VALUES ("Jamily", "3° ano", 10, true);
insert into tb_estudantes (nome, ano, nota, matriculado) VALUES ("Ana Flávia", "2° ano", 8, true);
insert into tb_estudantes (nome, ano, nota, matriculado) VALUES ("Ana Gabriela", "3° ano", 7, true);

select * from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 8 where id_estudante=3;

select * from tb_estudantes;