--exercicio 5
--select aninhado
SELECT DESCRICAO_CATEG
FROM CATEGORIA_LIVRO
WHERE ID_CATEG IN (SELECT CATEG_ID
                   FROM LIVRO
                   WHERE ID_LIVRO IN (SELECT LIVRO_ID
                                      FROM AUTORIA
                                      WHERE AUTOR_ID IN (SELECT ID_AUTOR
                                                         FROM AUTOR
                                                         WHERE NOME_AUTOR LIKE '%Pressman%')
                                      )
                   )

--igualdade de chaves
SELECT DESCRICAO_CATEG
FROM CATEGORIA_LIVRO, LIVRO, AUTORIA, AUTOR
WHERE ID_CATEG = CATEG_ID
AND ID_LIVRO = LIVRO_ID
AND AUTOR_ID = ID_AUTOR
AND NOME_AUTOR LIKE '%Pressman%'

--innerJoin
SELECT DESCRICAO_CATEG
FROM CATEGORIA_LIVRO
INNER JOIN LIVRO ON CATEG_ID = ID_CATEG
INNER JOIN AUTORIA ON LIVRO_ID = ID_LIVRO
INNER JOIN AUTOR ON ID_AUTOR = AUTOR_ID
WHERE NOME_AUTOR LIKE '%Pressman%'
