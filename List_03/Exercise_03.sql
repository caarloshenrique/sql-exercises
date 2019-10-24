--exercicio 3
--select aninhado
SELECT * FROM ITENS_EMPRESTIMO
WHERE EMPRESTIMO_ID IN (SELECT ID_EMPRES
                        FROM EMPRESTIMO
                        WHERE USUARIO_ID IN (SELECT ID_USUARIO
                                             FROM USUARIO
                                             WHERE NOME_USUARIO = 'Maria Josefa Silva')
                        )
--igualdade de chaves
SELECT * FROM ITENS_EMPRESTIMO, EMPRESTIMO, USUARIO
WHERE EMPRESTIMO_ID = ID_EMPRES
AND USUARIO_ID = ID_USUARIO
AND NOME_USUARIO = 'Maria Josefa Silva'

--inner join
SELECT * FROM ITENS_EMPRESTIMO
INNER JOIN emprestimo ON ID_EMPRES = EMPRESTIMO_ID
INNER JOIN usuario ON ID_USUARIO = USUARIO_ID
WHERE NOME_USUARIO = 'Maria Josefa Silva'
