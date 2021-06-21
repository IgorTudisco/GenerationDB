
-- criando um banco de dados

CREATE DATABASE db_generation_game_online;

-- USANDO O DATABASE

USE db_generation_game_online;

-- CRIANDO AS TABELAS

CREATE TABLE tb_classe(
	id_class INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    classes VARCHAR(50) NOT NULL,
    forca INT(50) NULL,
    agilidade INT(50) NULL,
    inteligencia INT(50) NULL
);

CREATE TABLE tb_personagem(
	id_peronagem INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade VARCHAR(50) NOT NULL,
    cla VARCHAR(50) NOT NULL,
    poder_ataque INT(100),
    id_class INT NOT NULL,
    FOREIGN KEY (id_class) REFERENCES tb_classe(id_class)
);

-- INSERINDO OS DADOS

-- classe

INSERT INTO tb_classe (nome, classes, forca, agilidade, inteligencia) VALUES
("ZikaGui", "guerreiro", 1000, 500, 300),
("ZikaDay", "mago", 300, 570, 1400),
("ZikaDe", "elfo", 840, 1200, 560),
("ZikaJoel", "mago", 310, 560, 1500),
("ZikaThom", "elfo", 850, 1500, 550)
;

-- Pesonagem 

INSERT INTO tb_personagem (nome, idade, cla, poder_ataque, id_class) VALUES
("Gui", 100, "Zikinhas", 2000, 1),
("Day", 50, "Zikao", 4000, 2),
("De", 1000, "ZikaCriatividade", 1256, 3),
("Joel", 352, "ZikaEl", 1500, 4),
("Thom", 10000, "ZikaGenio", 1550, 5)
;

SELECT * FROM tb_personagem;

SELECT * FROM tb_classe;

SELECT * FROM tb_personagem
WHERE poder_ataque <= 2000
and poder_ataque >= 1000;

SELECT * FROM tb_personagem WHERE nome LIKE "%D%";

SELECT * FROM tb_classe WHERE classes = "mago";

