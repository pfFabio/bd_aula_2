CREATE DATABASE aula_sla;
USE aula_sla;
CREATE TABLE aluno(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(100) NOT NULL,
idade INT
);
SHOW TABLES;
DROP TABLE aluno;
DESCRIBE aluno;

INSERT INTO aluno(nome, idade)
VALUES
("Gabriel", 24);

INSERT INTO aluno(nome, idade)
VALUES
("Fabio", 29),
("Fulano", 20);

SELECT * FROM aluno; 
SELECT nome FROM aluno;

 select * from aluno
 where nome = "fabio";
 
 -- isso é uma comentario
 /*
 comentario
 de varias
 linhas
 */
 
DELETE FROM aluno
WHERE id = 1;

INSERT INTO aluno(id, nome, idade)
VALUES
(1, "fabricio", 20000);


UPDATE aluno
SET nome = "Joao",
idade = 33
WHERE id = 6;

INSERT INTO aluno(nome)
VALUES
("Ana");

UPDATE aluno
SET idade = 10
WHERE id = 5;

SELECT nome, idade FROM aluno
WHERE idade >= 25;

SELECT nome, idade FROM aluno
WHERE idade > 5 OR idade < 33;

SELECT nome, idade FROM aluno
WHERE idade > 5 AND nome = "Ana";

SELECT * FROM aluno
ORDER BY nome;

SELECT * FROM aluno
ORDER BY nome DESC;

SELECT * FROM aluno
ORDER BY nome ASC;

CREATE TABLE estudante(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(100) NOT NULL,
idade INT NOT NULL,
id_endereco INT,
FOREIGN KEY (id_endereco) references endereco(id)
);


CREATE TABLE endereco(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
rua LONGTEXT
);

SHOW TABLES;
SELECT * FROM estudante;
SELECT * FROM endereco;
INSERT INTO endereco(rua)
VALUES
("Rua A lote 19 Quadra t"),
("Rua b lote 13 Quadra s"),
("Rua Ac lote 193 Quadra at"),
("Rua c lote 3 Quadra j");

INSERT INTO estudante (nome, idade, id_endereco)
VALUES
("Gabriel", 24, 3),
("Pedro", 20, 1),
("Fabrio", 25, 2),
("joao", 24, 1);

SELECT * FROM endereco;
SELECT * FROM estudante;


drop table estudante;

SELECT nome, idade, id_endereco FROM estudante
ORDER BY id_endereco DESC; 