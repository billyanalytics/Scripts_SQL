-- Servem para executar operações aritmética nos registros de uma coluna 
-- TIPOS DE FUNÇÕES AGREGADAS
-- COUNT()
-- SUM()
-- MIN()
-- MAX()
-- AVG()

-- Conte todas as linhas da coluna
SELECT count(*) 
FROM nome_tabela 

 Contagem distinta de uma coluna
SELECT count ( DISTINCT coluna) 
FROM nome_tabela  
WHERE coluna2 = 'condição'

Calcule o mínimo, máximo e médio
SELECT * 
FROM nome_tabela
SELECT 
	min(coluna),
	max(coluna),
	avg(coluna) 
FROM nome_tabela 

Valor mais alto de uma coluna
SELECT * 
FROM nome_tabela 
ORDER BY coluna DESC 
LIMIT 1
--ou 	   
SELECT *
FROM nome_tabela
WHERE coluna = (SELECT max(coluna) FROM nome_tabela)

