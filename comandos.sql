# VER INFORMAÇÕES GERAIS DAS TABELAS
SELECT * FROM agendamentos;
SELECT * FROM clientes;
SELECT * FROM funcionarios;

#1) COMANDOS TABELA AGENDAMENTOS

#1-1) REMARCAR AGENDAMENTO

#UPDATE agendamentos SET data_consulta = 'aaaa-mm-dd hh:mm:ss' WHERE id_cliente = X;

-- Mariana é o id_cliente = 3

UPDATE agendamentos SET data_consulta = '2026-05-22 16:30:00'
WHERE id_cliente = 3;

#1-2) REMOVER AGENDAMENTO (Deleção simples de uma consulta específica)

#DELETE FROM agendamentos WHERE id_agendamento = X;

-- Se quiser apagar o agendamento específico do Carlos Eduardo (id_cliente = 2, id_agendamento = 3)

DELETE FROM agendamentos
WHERE id_agendamento = 3;

#1-3) ALTERAR DENTISTA DO AGENDAMENTO

#UPDATE agendamentos SET id_funcionario = id_novo_dentista WHERE id_funcionario = id_antigo_dentista AND data_consulta = '...';

-- Joyce (id_funcionario = 6) assume o lugar de Neymar (id_funcionario = 7)
UPDATE agendamentos SET id_funcionario = 6
WHERE id_funcionario = 7
AND data_consulta = '2026-05-22 14:00:00';

#1-4) ALTERAR VALOR DO AGENDAMENTO

#UPDATE agendamentos SET valor = 999 WHERE id_cliente = X AND data_consulta = '...';

-- Mariana (id_cliente = 3)

UPDATE agendamentos SET valor = 150
WHERE id_cliente = 3
AND data_consulta = '2026-05-22 16:30:00';

#1-5) REGISTRAR PAGAMENTO DO AGENDAMENTO

#UPDATE agendamentos SET pago = TRUE WHERE id_cliente = X AND data_consulta = '...';

-- Mariana (id_cliente = 3)

UPDATE agendamentos SET pago = TRUE
WHERE id_cliente = 3
AND data_consulta = '2026-05-22 16:30:00';

# VISUALIZAÇÃO - RECEPCIONISTA

#1-6) SELECIONAR AGENDAMENTOS DO DIA 

SELECT * FROM agendamentos WHERE data_consulta = CURRENT_TIMESTAMP(); # CORRIGIR

#1-7) SELECIONAR AGENDAMENTOS DA SEMANA

#1-8) SELECIONAR AGENDAMENTOS DO MES

#1-9) SELECIONAR AGENDAMENTOS NÃO PAGOS

# VISUALIZAÇÃO - DENTISTA

#1-10) SELECIONAR AGENDAMENTOS DO DIA 

#1-11) SELECIONAR AGENDAMENTOS DA SEMANA

#1-12) SELECIONAR AGENDAMENTOS DO MES

# VISUALIZAÇÃO - CLIENTE

#1-14) SELECIONAR AGENDAMENTO ANTERIORES

#1-15) SELECIONAR PRÓXIMOS AGENDAMENTO

#1-16 SELECIONAR AGENDAMENTOS PAGOS


#2) COMANDOS TABELA CLIENTES

#2-1) ALTERAR CELULAR CLIENTE

#UPDATE clientes SET celular_cliente = '11999999999' WHERE id_cliente = X;

-- Ana (id_cliente = 1)

UPDATE clientes SET celular_cliente = '19996863888'
WHERE id_cliente = 1;

#2-2) ALTERAR CONVÊNIO CLIENTE

#UPDATE clientes SET id_convenio = id_do_convenio WHERE id_cliente = X;

-- João (id_cliente = 4) mudando para Unimed (id_convenio = 2)

UPDATE clientes SET id_convenio = 2
WHERE id_cliente = 4;

#2-3) ALTERAR NOME SOCIAL DO CLIENTE

#UPDATE clientes SET nome_social = 'Nome Social' WHERE id_cliente = X;

-- Ana (id_cliente = 1)

UPDATE clientes SET nome_social = 'Exemplo Nome Social'
WHERE id_cliente = 1;

#2-4) REMOVER NOME SOCIAL DO CLIENTE

#UPDATE clientes SET nome_social = NULL WHERE id_cliente = X;

-- Ana (id_cliente = 1)

UPDATE clientes SET nome_social = NULL
WHERE id_cliente = 1;


#2-5) EXCLUSÃO SEGURA DE UM CLIENTE QUE POSSUI CONSULTAS (SOLUÇÃO DO ERRO)

# João (id_cliente = 4)

DELETE FROM agendamentos 
WHERE id_cliente = 4;

DELETE FROM clientes 
WHERE id_cliente = 4;

# VISUALIZAÇÃo

#2-6) VISUALIZAR CONVENIO DO CLIENTE

SELECT convenios.nome_convenio, clientes.nome_cliente
FROM convenios
INNER JOIN clientes
ON convenios.id_convenio = clientes.id_convenio;


#2-7) VISUALIZAR TOTAL DE CLIENTES

SELECT COUNT(id_cliente) as total_clientes FROM clientes;

#3) COMANDOS TABELA FUNCIONÁRIOS

#3-1) ALTERAR CELULAR FUNCIONÁRIO

#UPDATE funcionarios SET celular_funcionario = '11999999999' WHERE id_funcionario = X;

-- Fabiana (id_funcionario = 4)

UPDATE funcionarios SET celular_funcionario = '19996864069'
WHERE id_funcionario = 4;

#3-2) ALTERAR SALÁRIO FUNCIONÁRIO

#UPDATE funcionarios SET salario = 9999 WHERE id_funcionario = X;

-- Luis Gustavo (id_funcionario = 2)

UPDATE funcionarios SET salario = 2600
WHERE id_funcionario = 2;

#3-3) VISUALIZAR TOTAL DE FUNCIONARIOS

SELECT COUNT(id_funcionario) as total_funcionario FROM funcionarios;

#3-4) VISUALIZAR FOLHA SALARIAL

SELECT SUM(salario) as folha_salaria FROM funcionarios;

#3-4) VISUALIZAR FUNCIONÁRIOS POR CARGO

#SELECT * FROM funcionarios WHERE cargo = 'cargo';

SELECT * FROM funcionarios WHERE cargo = 'Dentista';

#4) TABELAS APÓS EDIÇÃO
SELECT * FROM agendamentos;
SELECT * FROM funcionarios;
SELECT * FROM clientes;
