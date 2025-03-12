drop database Aula2;

CREATE DATABASE Aula2;
USE Aula2;

CREATE TABLE ALUNO (
id_aluno INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
data_nascimento DATE NOT NULL
);

CREATE TABLE MATRICULA(
id_matricula INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
numero INT NOT NULL
);

CREATE TABLE CURSO(
id_curso INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL
);

INSERT INTO ALUNO(nome, data_nascimento)
VALUES(
"fabio", "1995-05-30"
);

show tables;

select * from ALUNO;
select * from MATRICULA;
select * from CURSO;

-- adicionar uma coluna
ALTER TABLE ALUNO
ADD COLUMN cpf INT NOT NULL;


-- remover uma coluna
ALTER TABLE ALUNO
DROP cpf;


-- alterar o tipo de dado de uma coluna
ALTER TABLE ALUNO
MODIFY COLUMN cpf VARCHAR(20);

-- adicionar 2 campos em matricula
ALTER TABLE MATRICULA
ADD COLUMN aluno_id INT;

ALTER TABLE MATRICULA
ADD COLUMN curso_id INT;


-- adicionar as chaves estranjeiras
ALTER TABLE MATRICULA
ADD FOREIGN KEY (aluno_id) REFERENCES ALUNO(id_aluno);


ALTER TABLE MATRICULA
ADD FOREIGN KEY (curso_id) REFERENCES CURSO(id_curso);