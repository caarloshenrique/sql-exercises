--exercício 1
--select aninhado
SELECT * FROM livro
WHERE CATEG_ID IN (SELECT ID_CATEG
                    FROM CATEGORIA_LIVRO)

--igualdade de chaves
SELECT * FROM LIVRO, CATEGORIA_LIVRO
where CATEG_ID = ID_CATEG

--inner join
SELECT * from livro
INNER JOIN categoria_livro ON ID_CATEG = CATEG_ID

