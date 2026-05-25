#0) TABELAS ANTES EDIÇÃO
SELECT * FROM funcionarios;
SELECT * FROM clientes;
SELECT * FROM agendamentos;

#1) COMANDOS TABELA AGENDAMENTOS

#1-1) REMARCAR AGENDAMENTO
#UPDATE agendamentos SET data_consulta = 'aaaa-mm-dd hh:mm:ss'
#WHERE id_cliente = (SELECT id_cliente FROM clientes WHERE nome_cliente = 'EXEMPLO_NOME');

UPDATE agendamentos SET data_consulta = '2026-05-22 16:30:00'
WHERE id_cliente = (SELECT id_cliente FROM clientes WHERE nome_cliente = 'Mariana');

#1-2) REMOVER AGENDAMENTO
#DELETE FROM agendamentos
#WHERE id_cliente = (SELECT id_cliente FROM clientes WHERE nome_cliente = 'EXEMPLO_NOME');

DELETE FROM agendamentos
WHERE id_cliente = (SELECT id_cliente FROM clientes WHERE nome_cliente = 'Carlos');

#1-3) ALTERAR DENTISTA DO AGENDAMENTO
#UPDATE agendamentos SET id_funcionario = (SELECT id_funcionario FROM funcionarios WHERE nome_funcionario = 'Nome do Novo Dentista')
#WHERE id_funcionario = (SELECT id_funcionario FROM funcionarios WHERE nome_funcionario = 'Nome do Antigo Dentista')
#AND data_consulta = 'aaaa-mm-dd hh:mm:ss';

UPDATE agendamentos SET id_funcionario = (SELECT id_funcionario FROM funcionarios WHERE nome_funcionario = 'Joyce')
WHERE id_funcionario = (SELECT id_funcionario FROM funcionarios WHERE nome_funcionario = 'Neymar')
AND data_consulta = '2026-05-22 14:00:00';

#1-4) ALTERAR VALOR DO AGENDAMENTO
#UPDATE agendamentos SET valor = 999
#WHERE id_cliente = (SELECT id_cliente FROM clientes WHERE nome_cliente = 'EXEMPLO_NOME')
#AND data_consulta = 'aaaa-mm-dd hh:mm:ss';

UPDATE agendamentos SET valor = 150
WHERE id_cliente = (SELECT id_cliente FROM clientes WHERE nome_cliente = 'Mariana')
AND data_consulta = '2026-05-22 16:30:00';

#1-5) REGISTRAR PAGAMENTO DO AGENDAMENTO
#UPDATE agendamentos SET pago = TRUE
#WHERE id_cliente = (SELECT id_cliente FROM clientes WHERE nome_cliente = 'EXEMPLO_NOME')
#AND data_consulta = 'aaaa-mm-dd hh:mm:ss';

UPDATE agendamentos SET pago = TRUE
WHERE id_cliente = (SELECT id_cliente FROM clientes WHERE nome_cliente = 'Mariana')
AND data_consulta = '2026-05-22 16:30:00';


#2) COMANDOS TABELA CLIENTES

#2-1) ALTERAR CELULAR CLIENTE
#UPDATE clientes SET celular_cliente = '11999999999'
#WHERE nome_cliente = 'EXEMPLO_NOME';

UPDATE clientes SET celular_cliente = '19996863809'
WHERE nome_cliente = 'Ana';

#2-2) ALTERAR CONVÊNIO CLIENTE
#UPDATE clientes SET id_convenio = id_do_convenio
#WHERE nome_cliente = 'EXEMPLO_NOME';

UPDATE clientes SET id_convenio = 2
WHERE nome_cliente = 'João';

#2-3) ALTERAR NOME SOCIAL DO CLIENTE
#UPDATE clientes SET nome_social = 'Nome Social'
#WHERE nome_cliente = 'EXEMPLO_NOME';

UPDATE clientes SET nome_social = 'Exemplo Nome Social'
WHERE nome_cliente = 'Ana';

#2-4) REMOVER NOME SOCIAL DO CLIENTE
#UPDATE clientes SET nome_social = NULL
#WHERE nome_cliente = 'EXEMPLO_NOME';

UPDATE clientes SET nome_social = NULL
WHERE nome_cliente = 'Ana';


#3) COMANDOS TABELA FUNCIONÁRIOS

#3-1) ALTERAR CELULAR FUNCIONÁRIO
#UPDATE funcionarios SET celular_funcionario = '11999999999'
#WHERE nome_funcionario = 'EXEMPLO_NOME';

UPDATE funcionarios SET celular_funcionario = '19996864069'
WHERE nome_funcionario = 'Fabiana';

#3-2) ALTERAR SALÁRIO FUNCIONÁRIO
#UPDATE funcionarios SET salario = 9999
#WHERE nome_funcionario = 'EXEMPLO_NOME';

UPDATE funcionarios SET salario = 2600
WHERE nome_funcionario = 'Luis Gustavo';


#4) TABELAS APÓS EDIÇÃO
SELECT * FROM agendamentos;
SELECT * FROM funcionarios;
SELECT * FROM clientes;
