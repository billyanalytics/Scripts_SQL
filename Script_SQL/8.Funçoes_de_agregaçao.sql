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

-- OUTRAS FUNÇÕES ------------------------------------------------------------------

-- (Exemplo 4) Calcule o preço mínimo, máximo e médio dos productos da tabela products
SELECT * 
FROM sales.products 
LIMIT 10
SELECT 
	min(price),
	max(price),
	avg(price) 
FROM sales.products p  

Informe qual é o veículo mais caro da tabela products
SELECT * 
FROM sales.products p 
ORDER BY price DESC 
LIMIT 1
--ou 	   
SELECT *
FROM sales.products p 
WHERE price = (SELECT max(price) FROM sales.products p)

