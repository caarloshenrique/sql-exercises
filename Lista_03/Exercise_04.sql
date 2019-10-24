--exercicio 4
--select aninhado
SELECT TITULO_LIVRO
FROM LIVRO
WHERE ID_LIVRO IN (SELECT LIVRO_ID
                   FROM AUTORIA
                   WHERE AUTOR_ID IN (SELECT ID_AUTOR
                                      FROM AUTOR
                                      WHERE NOME_AUTOR LIKE '%Sommerville%')
                   )

--igualdade de chaves
SELECT TITULO_LIVRO
FROM LIVRO, AUTORIA, AUTOR
WHERE ID_LIVRO = LIVRO_ID
AND AUTOR_ID = ID_AUTOR
AND NOME_AUTOR LIKE '%Sommerville%'

--inner join
SELECT TITULO_LIVRO
FROM LIVRO
INNER JOIN AUTORIA ON LIVRO_ID = ID_LIVRO
INNER JOIN AUTOR ON ID_AUTOR = AUTOR_ID
WHERE NOME_AUTOR LIKE '%Sommerville%'

