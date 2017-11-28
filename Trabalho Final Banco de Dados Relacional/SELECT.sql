/**Problema A:
"José da Silva é aluno de uma escola, e gostaria de saber a data para devolução do livro "Javascript Ninja" que ele pegou na 
biblioteca semana passada, pois ele não lembra o prazo nem o dia que retirou."**/

SELECT 
	BIBLIOTECA.DATA_RETIRADA AS 'DATA QUE O LIVRO FOI RETIRADO', BIBLIOTECA.DATA_DEVOLUCAO AS 'DATA PARA A DEVOLUÇÃO', LIVRO.TITULO
FROM
	BIBLIOTECA JOIN LIVRO 
ON
	BIBLIOTECA.ID_LIVRO = LIVRO.ID
WHERE
	 LIVRO.TITULO LIKE '%NINJA%'
GROUP BY LIVRO.TITULO;

/**Problema B:
"Um aluno deseja consultar se o livro "JQuery in Action" está disponível no momento"**/

SELECT 
	LIVRO.TITULO AS 'TITULO DO LIVRO', LIVRO.DISPONIBILIDADE AS 'DISPONIBILIDADE DO LIVRO'
FROM
	LIVRO
WHERE
	LIVRO.TITULO = 'JQUERY IN ACTION';

/**Problema C:
"Maria Joaquina atende no balcão da biblioteca, ela precisa de uma lista de todos os livros que ela entregou ou recebeu ontem"**/
SELECT 
	ATENDENTE.NOME AS 'ATENDENTE RESPONSÁVEL', BIBLIOTECA.DATA_RETIRADA AS 'DATA QUE O LIVRO FOI RETIRADO', BIBLIOTECA.DATA_DEVOLUCAO AS 'DATA PARA A DEVOLUÇÃO', 
    LIVRO.TITULO AS 'TÍTULO DO LIVRO'
FROM
	BIBLIOTECA JOIN LIVRO JOIN ATENDENTE 
ON
	BIBLIOTECA.ID_LIVRO = LIVRO.ID
WHERE
	 ATENDENTE.ID = 1
AND
	BIBLIOTECA.DATA_RETIRADA = '2017-09-02'
AND
	BIBLIOTECA.DATA_DEVOLUCAO = '2017-09-09';

/**Problema D:
"O diretor da escola deseja saber quais os 5 livros mais retirados pelos alunos, para que possa comprar mais livros parecidos"**/
SELECT
	LIVRO.TITULO AS 'TÍTULO DO LIVRO'
FROM
	LIVRO JOIN BIBLIOTECA
ON
	BIBLIOTECA.ID_LIVRO = LIVRO.ID
WHERE
	LIVRO.DISPONIBILIDADE = FALSE
AND
	BIBLIOTECA.DATA_RETIRADA BETWEEN '2017-04-03' AND '2017-09-15'
AND
	BIBLIOTECA.DATA_DEVOLUCAO BETWEEN '2017-04-10' AND '2017-09-22'
GROUP BY LIVRO.TITULO;
    
/**Problema E:
"O diretor da escola deseja saber quais livros não são retirados a mais de 1 ano, para que este sejam doados ou descartados"**/
SELECT
	LIVRO.TITULO AS 'TITULO DO LIVRO', LIVRO.ULTIMA_RETIRADA AS 'ULTIMA RETIRADA'
FROM 
	LIVRO 
WHERE
	LIVRO.ULTIMA_RETIRADA <= '2016-01-01'
ORDER BY ULTIMA_RETIRADA;




 