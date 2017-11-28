/**O segundo exercício, exigirá uma boa interpretação do pequeno texto que segue, com base na sua interpretação, crie as 
tabelas necessárias para contemplar a vontade do usuário (proprietário do parque).

"Eu como proprietário de um parque de diversões, desejo ver no meu sistema de gestão, um relatório onde eu possa saber a 
quantidade de pessoas que utilizaram cada brinquedo em cada horário, o relatório também deve apontar quantidade de clientes 
idosos, estudantes e crianças, pois estes pagam meia entrada."**/

SHOW DATABASES;
CREATE DATABASE PARQUE;
USE PARQUE;

CREATE TABLE TIPO(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DESCRICAO VARCHAR(20) NOT NULL
);

CREATE TABLE BRINQUEDO(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DESCRICAO VARCHAR(50) NOT NULL
);

CREATE TABLE PESSOA(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR (50) NOT NULL,
    CPF CHAR (11) NOT NULL,
    ID_TIPO INT NOT NULL,

FOREIGN KEY (ID_TIPO) REFERENCES TIPO (ID)
);

CREATE TABLE UTILIZA(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	DATA DATETIME NOT NULL,
    ID_PESSOA INT NOT NULL,
    ID_BRINQUEDO INT NOT NULL,
    
FOREIGN KEY (ID_PESSOA) REFERENCES PESSOA(ID),
FOREIGN KEY (ID_BRINQUEDO) REFERENCES BRINQUEDO (ID),
FOREIGN KEY (ID_BRINQUEDO) REFERENCES BRINQUEDO (ID)
);