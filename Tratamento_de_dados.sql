-- TIPOS 
-- CASE WHEN
-- COALESCE()


-- Calcule o nº de clientes que ganham abaixo de 5k, entre 5k e 10k, entre 10k e 
-- 15k e acima de 15k
SELECT *
FROM sales.customers c 

WITH faixa_de_renda AS (
SELECT income
	   , CASE 
	   	WHEN income < 5000 THEN '0 - 5000'
	   	WHEN income >= 5000 AND income < 10000 THEN '5000 - 10000'
	   	WHEN income >= 10000 AND income < 15000 THEN '10000 - 15000'
	   	ELSE '15000+'
	   END AS faixa_renda
FROM sales.customers c 
)

SELECT faixa_renda
	   , count(*)
FROM faixa_de_renda
GROUP BY faixa_renda

-- Crie uma coluna chamada populacao_ajustada, preencha com os dados da coluna population, mas caso esse campo estiver nulo, 
-- preencha com a população média (geral) das cidades do Brasil
-- Modo 1
SELECT *
	, CASE 
		WHEN population IS NOT NULL THEN population 
		ELSE (SELECT avg(population) FROM temp_tables.regions)
	END AS populacao_ajustada
FROM temp_tables.regions 
WHERE population IS NULL 

-- Modo 2
SELECT *
	, COALESCE (population, (SELECT avg(population) FROM temp_tables.regions)) AS polulacao_ajustada
FROM temp_tables.regions 
WHERE population IS NULL 
