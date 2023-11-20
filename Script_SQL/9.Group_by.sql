-- Contagem agrupada de uma coluna
SELECT count(*)
FROM  nome_tabela
GROUP BY coluna

-- Contagem agrupada de várias colunas

SELECT coluna, COUNT(*)
FROM  nome_tabela
GROUP BY coluna

--Seleção de valores distintos
SELECT coluna
from nome_tabela
GROUP BY coluna