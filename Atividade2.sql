create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (
	id_produto bigint (5) auto_increment,
    nome varchar (40) not null,
    preco decimal (10,2) not null,
    marca varchar (20) not null,
    setor varchar (40),
    quantidade int,
    primary key (id_produto)
);

insert into tb_produtos (nome, preco, marca, setor, quantidade) VALUES ("Corda de pular", 20, "Vollo", "Fitness", 45);
insert into tb_produtos (nome, preco, marca, setor, quantidade) VALUES ("Smartband FIT2", 249, "Samsung", "Eletrônico", 100);
insert into tb_produtos (nome, preco, marca, setor, quantidade) VALUES ("Notebook gamer", 4850, "Dell", "Informática", 50);
insert into tb_produtos (nome, preco, marca, setor, quantidade) VALUES ("Kit de ferramentas", 170, "Schulz", "Ferramentas", 299);
insert into tb_produtos (nome, preco, marca, setor, quantidade) VALUES ("Piano", 5000, "Yamaha", "Instrumentos musicais", 10);
insert into tb_produtos (nome, preco, marca, setor, quantidade) VALUES ("Minecraft Starter", 141, "Mojanj", "Games", 150);
insert into tb_produtos (nome, preco, marca, setor, quantidade) VALUES ("Cartucho de tinta HP", 49.99, "HP", "Informática", 35);
insert into tb_produtos (nome, preco, marca, setor, quantidade) VALUES ("Penu 13", 309.90, "Goodyear", "Automotivo", 200);

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set preco = 7000 where id_produto = 5;

update tb_produtos set nome = "Pneu" where id_produto = 8;

select * from tb_produtos;