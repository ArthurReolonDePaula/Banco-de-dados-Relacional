show databases;

create database NotaFiscal;
use NotaFiscal;

create table cliente(
	nome varchar(50) NOT NULL,
    id int NOT NULL,
    cpf int NOT NULL,
PRIMARY KEY (id)
);

create table empresa(
	id int NOT NULL,
	nome varchar(50) NOT NULL,
    cnpj int NOT NULL,
    endereco varchar(50) NOT NULL,
PRIMARY KEY(id)
);

create table nota_Fiscal(
	id int NOT NULL,
    data DateTime NOT NULL,
    quantidade int NOT NULL,
    id_cliente int NOT NULL,
    id_empresa int NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_cliente) REFERENCES cliente(id),
FOREIGN KEY (id_empresa) REFERENCES empresa(id)
);

create table produto(
	id int NOT NULL,
	nome varchar(30) NOT NULL,
    fornecedor varchar(50) NOT NULL,
    codigo_Produto int NOT NULL,
    preco int NOT NULL,
PRIMARY KEY(id)
);

create table itens_nota(
	id_produto int NOT NULL,
    id_nota int NOT NULL,
	FOREIGN KEY(id_produto) REFERENCES produto(id),
    FOREIGN KEY(id_nota) REFERENCES nota(id)
);

INSERT INTO nota_fiscal(id, data, quantidade, id_cliente, id_empresa)
	VALUES(1, Now(), 1, 2,3);

INSERT INTO cliente(id, nome, cpf)
	VALUES(2, 'Pedro', 33333333333);
    
INSERT INTO empresa(id, nome, cnpj, endereco)
	VALUES(3, 'Distribuidora.LTDA', 02016440000162);
    
INSERT INTO produto(id, nome, fornecedor, codigo_produto, preco)
	VALUES(4, 'Sorvete Napolitano', 23, 15);
		
INSERT INTO itens_nota(id_nota, id_produto)
	VALUES(1,4);

	

