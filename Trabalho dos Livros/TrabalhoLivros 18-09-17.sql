/** O primeiro, semelhante ao que foi trabalhado em aula, observar o arquivo do excel adicionado nesta aula 
(ExercicioLivros.xlsx), e gerar as tabelas com os relacionamentos necessários para passar todos os dados do excel para uma 
base de dados relacional.**/

SHOW DATABASES;
CREATE DATABASE LIVRO;
USE LIVRO;

CREATE TABLE CATEGORIA(
	ID INT NOT NULL,
    CATEGORIA VARCHAR(30) NOT NULL,
    
PRIMARY KEY (ID)
);

CREATE TABLE AUTOR(
	ID INT NOT NULL,
    NOME  VARCHAR(50) NOT NULL,

PRIMARY KEY (ID)
);

CREATE TABLE LOJA(
	ID INT NOT NULL,
    NOME VARCHAR(20) NOT NULL,

PRIMARY KEY(ID)
);

CREATE TABLE IDIOMA(
	ID INT NOT NULL,
    IDIOMA VARCHAR (35) NOT NULL,
    
PRIMARY KEY(ID)
);

CREATE TABLE LIVRO(
	ID INT NOT NULL,
    ID_AUTOR INT NOT NULL,
    TITULO VARCHAR(50) NOT NULL,
    DATA_PUBLICACAO DATE NOT NULL,
    ISBN CHAR(13) NOT NULL,
    ID_CATEGORIA INT NOT NULL,
    VERSAO_PDF BOOLEAN NOT NULL,
    QUANTIDADE_VENDIDAS INT NOT NULL,
    ID_IDIOMA INT NOT NULL,
    
PRIMARY KEY (ID),
FOREIGN KEY (ID_AUTOR) REFERENCES AUTOR(ID),
FOREIGN KEY (ID_CATEGORIA) REFERENCES CATEGORIA(ID),
FOREIGN KEY (ID_IDIOMA) REFERENCES IDIOMA(ID)
);

CREATE TABLE LIVRO_LOJA(
	ID_LIVRO INT NOT NULL,
    ID_LOJA INT NOT NULL,
    
FOREIGN KEY (ID_LIVRO) REFERENCES LIVRO(ID),
FOREIGN KEY (ID_LOJA) REFERENCES LOJA(ID)
); 

INSERT INTO CATEGORIA(ID, CATEGORIA)
	VALUES (1,'Direito'),(2,'Literatura'),(3,'Marketing'),(4,'Autoajuda'),(5,'Gastronomia');

INSERT INTO AUTOR(ID, NOME)
	VALUES (1, 'Jose da Silva'),(2, 'Bruna Lombardi'),(3, 'Emilia Amaral'),(4, 'Gmt Sextante'),(5, 'Renato Cardoso'),(6, 'Rodrigo Oliveira');

INSERT INTO LOJA(ID, NOME)
	VALUES (1,'Saraiva'),(2,'Cultura'),(3,'Paulinas');
    
INSERT INTO IDIOMA(ID, IDIOMA)
	VALUES(1,'Portugues'),(2,'Ingles'),(3,'Espanhol');

INSERT INTO LIVRO (ID, ID_AUTOR, TITULO, DATA_PUBLICACAO, ISBN, ID_CATEGORIA, VERSAO_PDF, QUANTIDADE_VENDIDAS, ID_IDIOMA)
	VALUES (1, 1, 'Vade Mecum Tradicional', '2017/1/2','9788547218874', 1, TRUE, 310, 1),
    (2, 2, 'Poesia Reunida', '2016/7/5','9788543104942', 2, FALSE, 14, 1),
    (3, 3, 'Para Amar Clarice', '2016/3/16','9788595810006', 2, TRUE, 45, 1),
    (4, 4, 'Marketing 4.0', '2017/2/19','9788543105338', 3, TRUE, 76, 2),
    (5, 5, 'Casamento Blindado 2.0', '2016/1/24','9788578609443', 4, FALSE, 310, 1),
    (6, 6, 'Mocotó ', '2017/4/29','9788506008867', 5, TRUE, 29, 3);

INSERT INTO LIVRO_LOJA(ID_LIVRO, ID_LOJA)
	VALUES (1,1),(1,2),(1,3),(2,2),(2,3),(3,1),(3,3),(4,1),(4,2),(4,3),(5,1),(5,2),(6,1),(6,2);
    




