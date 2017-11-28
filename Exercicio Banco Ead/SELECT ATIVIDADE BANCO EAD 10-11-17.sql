/**Saldo atual da conta corrente de todos clientes.**/
SELECT 
	ROUND(SUM(TRANSACAO.VALOR)) AS SALDO_CONTA_CORRENTE, CLIENTE.NOME
FROM
	TRANSACAO,CLIENTE,TIPOCONTA
WHERE
	CLIENTE.ID = TRANSACAO.ID_CLIENTE
    AND
    TIPOCONTA.ID = TRANSACAO.ID_TIPOCONTA
    AND
    TIPOCONTA.ID = 1
GROUP BY
	CLIENTE.NOME;
    
/**Soma de todos os saldos de poupança de todos clientes.**/

SELECT
	ROUND(SUM(TRANSACAO.VALOR)) AS SALDO_CONTA_POUPANCA, CLIENTE.NOME
FROM
	TRANSACAO,CLIENTE,TIPOCONTA
WHERE
	CLIENTE.ID = TRANSACAO.ID_CLIENTE
    AND
    TIPOCONTA.ID = TRANSACAO.ID_TIPOCONTA
    AND
    TIPOCONTA.ID = 2
GROUP BY
	CLIENTE.NOME;

/**Extrato de transações em conta corrente do cliente Paulo Mello**/

SELECT
	TRANSACAO.VALOR AS SALDO_CONTA_CORRENTE, TRANSACAO.DATA_TRANSACAO, TRANSACAO.DESCRICAO
FROM 
	TRANSACAO,CLIENTE,TIPOCONTA
WHERE
	CLIENTE.ID = TRANSACAO.ID_CLIENTE
    AND
    TIPOCONTA.ID = TRANSACAO.ID_TIPOCONTA
    AND
    TIPOCONTA.ID = 1
    AND
    CLIENTE.ID = 4
GROUP BY
	TRANSACAO.DATA_TRANSACAO;
    
/**Extrato de transações em conta poupança do cliente Maria de Souza no ano de 2017**/

SELECT
	TRANSACAO.VALOR AS SALDO_CONTA_POUPANCA, TRANSACAO.DATA_TRANSACAO, TRANSACAO.DESCRICAO
FROM
	TRANSACAO, CLIENTE, TIPOCONTA
WHERE
	CLIENTE.ID = TRANSACAO.ID_CLIENTE
    AND
    TIPOCONTA.ID = TRANSACAO.ID_TIPOCONTA
    AND
    TIPOCONTA.ID = 2
    AND
    CLIENTE.ID = 2
GROUP BY
	TRANSACAO.DATA_TRANSACAO;
/** FALTOU SELECIONAR O ANO**/
/** Saldo total do cliente José da Silva no final do ano 2016, ou seja, conta corrente e poupança juntas.**/

SELECT 
	ROUND(SUM(TRANSACAO.VALOR)) AS SALDO_TOTAL, CLIENTE.NOME
FROM
	TRANSACAO, CLIENTE, TIPOCONTA
WHERE
	CLIENTE.ID = TRANSACAO.ID_CLIENTE
    AND
    TIPOCONTA.ID = TRANSACAO.ID_TIPOCONTA;
    /**Faltou selecionar do ano 2016**/
    
/** Extrato da conta corrente do mês de fevereiro de 2017 do cliente João Oliveira, neste caso, é necessário que o 
primeiro registro retornado, seja o saldo final no dia anterior.**/

SELECT
    