** EXERC�CIO 4 **
SELECT D.DESC_DESP, V.VALOR_VIAGEM
	FROM FRETE F
	INNER JOIN CIDADE C ON F.CIDADE_ID = C.ID_CID
	INNER JOIN VIAGEM V ON V.FRETE_ID = F.ID_FRETE
	INNER JOIN DESPESA D ON D.ID_DESP = V.DESPESA_ID
	WHERE C.NOME_CID = 'CORUMB�'