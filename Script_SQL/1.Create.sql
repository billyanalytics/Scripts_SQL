--Criando banco de dados 
CREATE DATABASE nome_da_base_de_dados

--Criando tabela do banco de dados
CREATE TABLE nome_da_tabela 
	( -- iniciar comando 
	coluna1 SERIAL PRIMARY KEY -- com auto incremento 
	coluna1 INT PRIMARY key -- sem auto incremento 
	coluna2 char(20) NOT NULL -- Se você precisa de um comprimento fixo para facilitar consultas
	coluna3 VARCHAR(20) NOT NULL -- Se você espera muita variação no comprimento das strings
	coluna4 DATE NOT NULL -- Para colunas com data 'YYYY-MM-DD'
	coluna5 INT NOT NULL-- para números inteiros
	coluna6 FLOAT NOT NULL -- para números decimais
	coluna7 NUMERIC(10,2) NOT NULL -- Para números decimais informando seu tamanho (8 inteiros com 2 casas decimais )
	coluna8 TIMESTAMP NOT NULL --armazena data e hora
	coluna9 BOOLEAN NOT NULL -- Armazena valores lógicos (verdadeiro ou falso) 
	); -- Finalizar comando 