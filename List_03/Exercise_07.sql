--exercicio 7
--select aninhado
SELECT NUM_EXEMPLAR, QTDE_PAGINAS
FROM EXEMPLAR
WHERE ID_EXEMPLAR IN (SELECT EXEMPLAR_ID
                      FROM ITENS_EMPRESTIMO
                      WHERE EMPRESTIMO_ID IN (SELECT ID_EMPRES
                                              FROM EMPRESTIMO
                                              WHERE USUARIO_ID IN (SELECT ID_USUARIO
                                                                   FROM USUARIO
                                                                   WHERE TIPO_USUARIO = 'A')
                                              )
                      )

--igualdade de chaves
SELECT NUM_EXEMPLAR, QTDE_PAGINAS
FROM EXEMPLAR, ITENS_EMPRESTIMO, EMPRESTIMO, USUARIO
WHERE ID_EXEMPLAR = EXEMPLAR_ID
AND EMPRESTIMO_ID = ID_EMPRES
AND USUARIO_ID = ID_USUARIO
AND TIPO_USUARIO = 'A'

--inner join
SELECT NUM_EXEMPLAR, QTDE_PAGINAS
FROM EXEMPLAR
INNER JOIN ITENS_EMPRESTIMO ON EXEMPLAR_ID = ID_EXEMPLAR
INNER JOIN EMPRESTIMO ON ID_EMPRES = EMPRESTIMO_ID
INNER JOIN USUARIO ON ID_USUARIO = USUARIO_ID
WHERE TIPO_USUARIO = 'A'

