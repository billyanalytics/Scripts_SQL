--Criando Relacionamentos entre Tabelas
ALTER TABLE nome_da_tabela_da_FK ADD FOREIGN KEY (coluna do FK) REFERENCES (coluna da PK)

--Criando coluna numa tabela já existente
ALTER TABLE nome_da_tabela ADD nome_coluna VARCHAR(20); -- incluindo uma coluna como varchar de 20

--Apagando  coluna numa tabela já existente
ALTER TABLE tabela DROP COLUMN coluna;