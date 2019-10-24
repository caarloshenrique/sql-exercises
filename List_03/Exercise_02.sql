--exercicio 2
--select aninhado
SELECT TITULO_LIVRO
FROM LIVRO
WHERE CATEG_ID IN (SELECT ID_CATEG
                    FROM categoria_livro
                    WHERE DESCRICAO_CATEG = 'Drama')

--igualdade de chaves
SELECT TITULO_LIVRO FROM LIVRO, CATEGORIA_LIVRO
WHERE CATEG_ID = ID_CATEG
AND DESCRICAO_CATEG = 'Drama'

--inner join
SELECT * FROM livro
INNER JOIN categoria_livro ON ID_CATEG = CATEG_ID
WHERE DESCRICAO_CATEG = 'Drama'
