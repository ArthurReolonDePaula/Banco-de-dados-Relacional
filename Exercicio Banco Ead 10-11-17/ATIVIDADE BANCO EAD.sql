CREATE DATABASE banco;

USE banco;

CREATE TABLE cliente (
  id INTEGER  PRIMARY KEY,
  cpf VARCHAR(11) NOT NULL,
  nome VARCHAR(255) NOT NULL,
  data_cadastro DATE NOT NULL
);

CREATE TABLE tipoconta (
  id INT  PRIMARY KEY,
  descricao VARCHAR(255) NOT NULL
);

CREATE TABLE transacao (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  id_cliente INTEGER NOT NULL,
  id_tipoconta INT NOT NULL,
  data_transacao DATE NOT NULL,
  valor DOUBLE NOT NULL,
  descricao VARCHAR(255) 
);

ALTER TABLE transacao ADD FOREIGN KEY (id_cliente) REFERENCES cliente (id);

ALTER TABLE transacao ADD FOREIGN KEY (id_tipoconta) REFERENCES tipoconta (id);

INSERT INTO cliente (id, cpf, nome, data_cadastro) VALUES (1, '46552083335', 'Jose da Silva', '2016-10-20');
INSERT INTO cliente (id, cpf, nome, data_cadastro) VALUES (2, '76854286794', 'Maria de Souza', '2016-11-21');
INSERT INTO cliente (id, cpf, nome, data_cadastro) VALUES (3, '35867757412', 'João Oliveira', '2017-01-15');
INSERT INTO cliente (id, cpf, nome, data_cadastro) VALUES (4, '93244674500', 'Paulo Mello', '2017-02-02');

INSERT INTO tipoconta (id, descricao) VALUES (1, 'CONTA CORRENTE');
INSERT INTO tipoconta (id, descricao) VALUES (2, 'CONTA POPANCA');


/* Transacoes Jose da Silva ID: 1 */
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2016-10-20', 10.00, 'deposito inicial');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2016-10-20', -5.00, 'estacionamento');

INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2016-11-05', 200.00, 'salario');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2016-11-10', -40.00, 'conta de luz');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2016-11-10', -100.00, 'aluguel');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2016-11-15', -50.00, 'transf poupanca');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 2, '2016-11-15', 50.00, 'transf poupanca');

INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2016-12-05', 200.00, 'salario');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2016-12-10', -40.00, 'conta de luz');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2016-12-10', -100.00, 'aluguel');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2016-12-15', -50.00, 'transf poupanca');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 2, '2016-12-15', 50.00, 'transf poupanca');

INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2017-01-05', 200.00, 'salario');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2017-01-10', -40.00, 'conta de luz');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2017-01-10', -100.00, 'aluguel');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2017-01-15', -50.00, 'transf poupanca');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 2, '2017-01-15', 50.00, 'transf poupanca');

INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2017-02-05', 200.00, 'salario');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2017-02-10', -40.00, 'conta de luz');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2017-02-10', -100.00, 'aluguel');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 1, '2017-02-15', -50.00, 'transf poupanca');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (1, 2, '2017-02-15', 50.00, 'transf poupanca');


/* Transacoes Maria de Souza ID: 2 */
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2016-11-21', 10.00, 'deposito inicial');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2016-11-21', -5.00, 'estacionamento');

INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2016-12-05', 356.80, 'salario');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2016-12-10', -46.90, 'conta de luz');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2016-12-10', -154.20, 'aluguel');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2016-12-15', -100.00, 'transf poupanca');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 2, '2016-12-15', 100.00, 'transf poupanca');

INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2017-01-05', 356.80, 'salario');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2017-01-10', -46.90, 'conta de luz');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2017-01-10', -154.20, 'aluguel');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2017-01-15', -100.00, 'transf poupanca');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 2, '2017-01-15', 100.00, 'transf poupanca');

INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2017-02-05', 356.80, 'salario');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2017-02-10', -46.90, 'conta de luz');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2017-02-10', -154.20, 'aluguel');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 1, '2017-02-15', -100.00, 'transf poupanca');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (2, 2, '2017-02-15', 100.00, 'transf poupanca');



/* Transacoes João Oliveira ID: 3 */
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (3, 1, '2017-01-15', 10.00, 'deposito inicial');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (3, 1, '2017-01-15', -5.00, 'estacionamento');

INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (3, 1, '2017-01-05', 297.30, 'salario');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (3, 1, '2017-01-10', -58.40, 'conta de luz');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (3, 1, '2017-01-10', -102.60, 'aluguel');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (3, 1, '2017-01-15', -70.00, 'transf poupanca');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (3, 2, '2017-01-15', 70.00, 'transf poupanca');

INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (3, 1, '2017-02-05', 297.30, 'salario');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (3, 1, '2017-02-10', -58.40, 'conta de luz');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (3, 1, '2017-02-10', -102.60, 'aluguel');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (3, 1, '2017-02-15', -70.00, 'transf poupanca');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (3, 2, '2017-02-15', 70.00, 'transf poupanca');


/* Transacoes Paulo Mello ID: 4 */
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (4, 1, '2017-02-02', 10.00, 'deposito inicial');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (4, 1, '2017-02-02', -5.00, 'estacionamento');

INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (4, 1, '2017-02-05', 338.90, 'salario');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (4, 1, '2017-02-10', -38.20, 'conta de luz');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (4, 1, '2017-02-10', -200.00, 'aluguel');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (4, 1, '2017-02-15', -105.70, 'transf poupanca');
INSERT INTO transacao (id_cliente, id_tipoconta, data_transacao, valor, descricao) VALUES (4, 2, '2017-02-15', 105.70, 'transf poupanca');

