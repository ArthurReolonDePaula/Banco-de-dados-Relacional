/**1) Exiba uma lista de clientes mostrando o vendedor que o atende, inclua na lista a cidade do cliente e a comissão do vendedor.**/
SELECT 
	c.NOME AS 'CLIENTE', v.nome AS 'VENDEDOR', c.CIDADE AS 'CIDADE DOS CLIENTES', v.COMISSAO AS 'COMISSAO DOS VENDEDORES'
FROM
	CLIENTES c JOIN VENDEDORES v ON v.id = c.vendedor_id
GROUP BY 
	c.NOME;

/**2) Exiba uma lista de clientes mostrando o vendedor que o atende, inclua na lista a cidade do cliente e a comissão do vendedor, 
porém somente nos casos onde a comissão for maior que 12%.**/
SELECT
	C.NOME as 'CLIENTE', V.NOME AS 'VENDEDOR', C.CIDADE AS 'CIDADE DOS CLIENTES', V.COMISSAO AS 'COMISSAO DOS VENDEDORES'
FROM
	CLIENTES C JOIN VENDEDORES V ON V.ID = C.VENDEDOR_ID
WHERE
	V.COMISSAO > 0.12
GROUP BY
	C.NOME;


/**3) Exiba uma lista de clientes mostrando o vendedor que o atende, inclua na lista a cidade do cliente e a comissão do vendedor,
porém somente nos casos onde a comissão for maior que 12% e o vendedor não seja da mesma cidade que o cliente.**/
SELECT
	C.NOME AS 'CLIENTE', V.NOME AS 'VENDEDOR', C.CIDADE AS 'CIDADE DOS CLIENTES', V.COMISSAO AS 'COMISSAO DOS VENDEDORES'
FROM
	CLIENTES C JOIN VENDEDORES V ON V.ID = C.VENDEDOR_ID
WHERE
	V.COMISSAO > 0.12 AND C.CIDADE <> V.CIDADE
GROUP BY
	C.NOME;


/**4) Exiba os detalhes de uma ordem, ou seja, número de ordem, data do pedido, quantidade de ordem, nome do cliente e vendedor 
e comissão do vendedor para um pedido**/
SELECT 
	P.NUMERO AS 'NUMERO DOS PEDIDOS', P.DATA AS 'DATA DOS PEDIDOS', C.NOME AS 'NOME DOS CLIENTES', V.NOME AS 'NOME DOS VENDEDORES', V.COMISSAO AS 'COMISSAO DOS VENDEDORES'
FROM 
	CLIENTES C JOIN VENDEDORES V JOIN PEDIDOS P 
ON 
	P.VENDEDOR_ID = V.ID AND P.CLIENTE_ID = C.ID;

/**5) Faça um relatório com o nome do cliente, a cidade, o número da ordem, a data e o montante em ordem crescente pela data do 
pedido. Para que assim possamos encontrar qualquer um dos clientes existentes não colocou nenhum pedido ou colocou um ou mais 
pedidos.**/

	SELECT 
		C.NOME AS 'NOME CLIENTE', C.CIDADE AS 'CIDADE DOS CLIENTES', P.NUMERO AS 'NUMERO DO PEDIDO', P.DATA AS 
		'DATA DOS PEDIDOS', P.VALOR AS 'VALOR DOS PEDIDOS'
	FROM
		CLIENTES C LEFT JOIN PEDIDOS P 
	ON
		P.CLIENTE_ID = C.ID
	ORDER BY
		P.VALOR;
    

/**6) Prepare uma lista em ordem crescente para os vendedores que trabalham para um ou mais clientes ou ainda não se juntam a 
nenhum dos clientes**/

	SELECT
		V.NOME AS 'NOME VENDEDOR', C.NOME AS 'NOME CLIENTE'
	FROM
		CLIENTES C RIGHT JOIN VENDEDORES V
	ON
		C.VENDEDOR_ID = V.ID
	ORDER BY
		V.NOME;
		C.VENDEDOR_ID = V.ID;