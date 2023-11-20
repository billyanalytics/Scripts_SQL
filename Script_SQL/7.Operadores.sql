-- Operadores Aritméticos
-- Servem para executar operações matemáticas, Muito utilizados para criar colunas calculadas

-- TIPOS
-- + soma
-- - subtração 
-- * Multiplicação
-- / Divisão
-- ^ exponencial
-- % modulo
-- || Concatenar Strings

-- Operadores lógicos 
-- Usados para unir expressões simples em uma composta

-- TIPOS
-- AND
-- OR
-- NOT
-- BETWEEN
-- IN
-- LIKE
-- ILIKE
-- IS NULL

SELECT coluna1, 
	   coluna2,
	   (coluna1 + coluna2) AS Soma
FROM nome_tabela
ORDER BY Soma -- Caso queira ordenar pela tabela criada
-- ou
SELECT coluna1
	   (coluna3 * coluna5) AS Multiplicação
FROM nome_tabela
-- strings
SELECT 
	coluna1 || ' ' || coluna2 AS "Colunas juntas"
FROM nome_tabela

-- like
SELECT *  
FROM nome_tabela
WHERE coluna LIKE 'condição%' --começa com a condição  
WHERE coluna LIKE '%condição' --Termina com a condição 





