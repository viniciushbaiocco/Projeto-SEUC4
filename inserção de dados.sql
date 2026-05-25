#1) INSERÇÃO DOS FUNCIONÁRIOS
#INSERT INTO funcionarios
#(nome_funcionario, sobrenome_funcionario, email, celular_funcionario, cargo, salario)
#VALUES
#('nome do funcionário', 'sobrenome do funcionário', 'email do funcionário', '11122233344', 'cargo do funcionário', 0);

#RECEPCIONISTA
INSERT INTO funcionarios
(nome_funcionario, sobrenome_funcionario, email, celular_funcionario, cargo, salario)
VALUES
('Letícia', 'Romão', 'leticiar.del@gmail.com', '19996863809', 'Recepcionista', 2500);

INSERT INTO funcionarios
(nome_funcionario, sobrenome_funcionario, email, celular_funcionario, cargo, salario)
VALUES
('Luis Gustavo', 'Costa', 'luis.costa@gmail.com', '19987091378', 'Recepcionista', 2300);

#FAXINEIRO
INSERT INTO funcionarios
(nome_funcionario, sobrenome_funcionario, email, celular_funcionario, cargo, salario)
VALUES
('Cleber', 'Machado', 'clebinho.max@gmail.com', '19976891303', 'Faxineiro', 1800);

INSERT INTO funcionarios
(nome_funcionario, sobrenome_funcionario, email, celular_funcionario, cargo, salario)
VALUES
('Fabiana', 'Melo', 'fabi.contato@gmail.com', '19990075430', 'Faxineiro', 1700);

#DENTISTA
INSERT INTO funcionarios
(nome_funcionario, sobrenome_funcionario, email, celular_funcionario, cargo, salario)
VALUES
('Pedro', 'Gomes', 'pedro.gomes@gmail.com', '19993467443', 'Dentista', 6500);

INSERT INTO funcionarios
(nome_funcionario, sobrenome_funcionario, email, celular_funcionario, cargo, salario)
VALUES
('Joyce', 'Professora Incrivel', 'joyce.contato@gmail.com', '19909873709', 'Dentista', 8000);

INSERT INTO funcionarios
(nome_funcionario, sobrenome_funcionario, email, celular_funcionario, cargo, salario)
VALUES
('Neymar', 'Junior', 'neymar.jr@gmail.com', '19995407809', 'Dentista', 9500);


#2) INSERÇÃO DOS CONVÊNIOS
#INSERT INTO convenios
#(nome_convenio)
#VALUES
#('nome do convênio');

INSERT INTO convenios (nome_convenio) VALUES ('Sem Convênio');
INSERT INTO convenios (nome_convenio) VALUES ('Unimed');
INSERT INTO convenios (nome_convenio) VALUES ('Amil');


#3) INSERÇÃO DOS CLIENTES
#INSERT INTO clientes
#(nome_cliente, sobrenome_cliente, nome_social, idade, celular_cliente, cpf, id_convenio)
#VALUES
#('nome do cliente', 'sobrenome do cliente', 'nome social (opcional)', 'idade', '11122233344', '00000000000', id_do_convenio);

INSERT INTO clientes
(nome_cliente, sobrenome_cliente, nome_social, idade, celular_cliente, cpf, id_convenio)
VALUES
('Ana', 'Silva', NULL, '25', '19987654321', '12345678901', 2);

INSERT INTO clientes
(nome_cliente, sobrenome_cliente, nome_social, idade, celular_cliente, cpf, id_convenio)
VALUES
('Carlos', 'Eduardo', NULL, '34', '19976543210', '23456789012', 1);

INSERT INTO clientes
(nome_cliente, sobrenome_cliente, nome_social, idade, celular_cliente, cpf, id_convenio)
VALUES
('Mariana', 'Costa', NULL, '28', '19965432109', '34567890123', 1);

INSERT INTO clientes
(nome_cliente, sobrenome_cliente, nome_social, idade, celular_cliente, cpf, id_convenio)
VALUES
('João', 'Pedro', NULL, '45', '19954321098', '45678901234', 1);

INSERT INTO clientes
(nome_cliente, sobrenome_cliente, nome_social, idade, celular_cliente, cpf, id_convenio)
VALUES
('Fernanda', 'Lima', NULL, '19', '19943210987', '56789012345', 3);

INSERT INTO clientes
(nome_cliente, sobrenome_cliente, nome_social, idade, celular_cliente, cpf, id_convenio)
VALUES
('Ricardo', 'Mendes', NULL, '52', '19932109876', '67890123456', 1);


#4) INSERÇÃO DE AGENDAMENTOS
#INSERT INTO agendamentos
#(id_funcionario, id_cliente, data_consulta, valor, pago)
#VALUES
#(id_do_funcionario, id_do_cliente, 'aaaa-mm-dd hh:mm:ss', valor_da_consulta, TRUE/FALSE);

INSERT INTO agendamentos
(id_funcionario, id_cliente, data_consulta, valor, pago)
VALUES
(5, 1, '2026-05-20 09:00:00', DEFAULT, FALSE);

INSERT INTO agendamentos
(id_funcionario, id_cliente, data_consulta, valor, pago)
VALUES
(7, 5, '2026-05-21 08:00:00', DEFAULT, FALSE);

INSERT INTO agendamentos
(id_funcionario, id_cliente, data_consulta, valor, pago)
VALUES
(6, 2, '2026-05-20 10:30:00', 150, FALSE);

INSERT INTO agendamentos
(id_funcionario, id_cliente, data_consulta, valor, pago)
VALUES
(5, 3, '2026-05-21 11:00:00', 200, FALSE);

INSERT INTO agendamentos
(id_funcionario, id_cliente, data_consulta, valor, pago)
VALUES
(6, 4, '2026-05-22 09:30:00', 180, FALSE);

INSERT INTO agendamentos
(id_funcionario, id_cliente, data_consulta, valor, pago)
VALUES
(7, 6, '2026-05-22 14:00:00', 150, FALSE);


