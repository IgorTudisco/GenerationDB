
-- criando o banco

CREATE DATABASE db_pizzaria_legal;

-- CRIANDO AS TABELAS

use db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(50) NOT null,
    quantidade VARCHAR(50) NOT NULL
);

CREATE TABLE tb_pizza(
	id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    fk_categoria INT,
    preco FLOAT NOT NULL ,
    nome VARCHAR(50) NOT NULL,
    foreign key (fk_categoria) references tb_categoria(id_categoria)
);


INSERT INTO tb_categoria (sabor, quantidade) VALUES
("doce", "8"),
("salgada", "16"),
("meioAmeio", "8"),
("Moda", "8"),
("ZikaGui", "8")
;

INSERT INTO tb_pizza (fk_categoria, preco, nome) VALUES
(1, 50.00, "Chocolate"),
(2, 100, "SuaModa"),
(3, 30, "Média"),
(4, 29, "Calabresa"),
(5, 110, "Familia24")
;

SELECT nome, preco"preço" FROM tb_pizza WHERE preco > 45;

SELECT nome, preco"preço" FROM tb_pizza WHERE preco > 29 AND preco < 60;

SELECT * FROM tb_pizza WHERE nome LIKE '%i%';

SELECT tb_pizza.nome, tb_pizza.preco, tb_categoria.sabor
from tb_pizza
INNER JOIN tb_categoria
on tb_categoria.id_categoria = tb_pizza.fk_categoria
ORDER BY nome ASC;

SELECT tb_pizza.nome, tb_pizza.preco, tb_categoria.sabor
from tb_pizza
INNER JOIN tb_categoria
on tb_categoria.id_categoria = tb_pizza.fk_categoria
WHERE nome like "%i%"
ORDER BY nome ASC;


