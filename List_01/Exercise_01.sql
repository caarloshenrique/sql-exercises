** EXERC�CIO 1 **
SELECT * 
	FROM FRETE
	WHERE CLIENTE_ID IN (
		SELECT ID_CLI
			FROM CLIENTE
			WHERE NOME_CLI = 'Josefino'
			OR NOME_CLI = 'Jailton'
			OR NOME_CLI = 'Jeniffer'
	);