*Exerc�cio 6*
SELECT CIDADE_ID, SUM (VALOR_FRETE) AS SOMATORIO, COUNT (ID_FRETE) AS CONTAGEM
FROM FRETE
GROUP BY CIDADE_ID
HAVING SUM (VALOR_FRETE) > 3000
ORDER BY CONTAGEM