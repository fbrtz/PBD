-- Aluno: Fabio Rodrigo Ortiz dos Santos
-- Criando o banco de dados

CREATE DATABASE faeterjrio;

USE faeterjrio;

-- Criando as tabelas

CREATE TABLE aluno(
	matricula INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	cpf VARCHAR(14) NOT NULL,
	email VARCHAR(100) NOT NULL);


CREATE TABLE turma(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	sigla VARCHAR(20) NOT NULL,
	cargaHora INT NOT NULL,
	periodo VARCHAR(5) NOT NULL,
	limite_falta INT NOT NULL);

-- Fazendo os Inserts de Aluno

INSERT INTO aluno VALUES (NULL, 'João Pedro', '111.111.111-1', 'jp111@gmail.com');

INSERT INTO aluno VALUES (NULL, 'Maria Clara', '222.222.222-2', 'mc222@gmail.com');

INSERT INTO aluno VALUES (NULL, 'Enzo Gabriel', '333.333.333-3', 'eg333@gmail.com');

-- Fazendo os Inserts de Turma

INSERT INTO turma VALUES (NULL, 'Programacão Orientada a Objetos', 'POB', 100, 'Manhã', 5);

INSERT INTO turma VALUES (NULL, 'Estrutura de Dados', 'ESD', 80, 'Noite', 2);

INSERT INTO turma VALUES (NULL, 'Projeto de Banco de Dados', 'PBD', 200, 'Manhã', 10);

-- Fazendo consulta de aluno

SELECT nome, email FROM aluno WHERE matricula= 1;
SELECT * FROM aluno WHERE nome LIKE 'Enzo%';

-- Fazendo consulta de turma

SELECT * FROM turma WHERE nome LIKE 'Pro%';

-- Alterando Dados

UPDATE aluno SET email='24209807960025@faeterj-rio.edu.br' WHERE matricula = 1;

-- deletando Dados

DELETE FROM turma WHERE id = 1;
