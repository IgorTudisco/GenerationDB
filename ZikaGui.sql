/* Criando um banco de dados */

create database RH;

use RH;

create table funcionarios (
	id_funcionarios int(4) auto_increment,
    nome char(40),
	setor char(40),
    salario float(10),
    email char(40),
    PRIMARY KEY (id_funcionarios)
);

use RH;
select * from funcionarios;

insert into funcionarios(nome, setor, salario, email) values("Denise", "Desenvolvimento de SoftWare", 4000.00, "denise@hotmail.com");
insert into funcionarios(nome, setor, salario, email) values("Dayse", "Desenvolvimento de SoftWare", 3500.00, "day@hotmail.com");
insert into funcionarios(nome, setor, salario, email) values("Bryan", "Desenvolvimento de SoftWare", 2400.00, "brya@hotmail.com");
insert into funcionarios(nome, setor, salario, email) values("Felipe", "Desenvolvimento de SoftWare", 1523.00, "fe@hotmail.com");
insert into funcionarios(nome, setor, salario, email) values("Jesus", "Desenvolvimento de SoftWare", 1400.00, "jesus@hotmail.com");

select * from funcionarios where salario > 2000;

select * from funcionarios where salario < 2000;

update funcionarios set salario = 3780.00 where id_funcionarios = 2;

select * from funcionarios;