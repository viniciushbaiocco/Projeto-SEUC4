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

#1-2) REMOVER AGENDAMENTO

#DELETE FROM agendamentos WHERE id_agendamento = X;

-- Carlos Eduardo (id_cliente = 2, id_agendamento = 3)

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

#1-6) VISUALIZAR AGENDAMENTOS DO DIA 

SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
FROM agendamentos a
JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
JOIN clientes c ON c.id_cliente = a.id_cliente 
WHERE DATE(data_consulta) = CURRENT_DATE();

#1-7) VISUALIZAR AGENDAMENTOS DA SEMANA

SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
FROM agendamentos a
JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
JOIN clientes c ON c.id_cliente = a.id_cliente
WHERE WEEK(data_consulta, 3) = WEEK(NOW(), 3) AND YEAR(data_consulta) = YEAR(NOW());

#1-8) VISUALIZAR AGENDAMENTOS DO MES

SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
FROM agendamentos a
JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
JOIN clientes c ON c.id_cliente = a.id_cliente
WHERE MONTH(data_consulta) = MONTH(NOW()) 
AND YEAR(data_consulta) = YEAR(NOW());

#1-9.1) VISUALIZAR AGENDAMENTOS NÃO PAGOS

SELECT c.nome_cliente, a.data_consulta, a.valor, a.pago 
FROM agendamentos a
JOIN clientes c ON c.id_cliente = a.id_cliente
WHERE pago = FALSE;

#1-9.2) VISUALIZAR AGENDAMENTOS NÃO PAGOS DE DETERMINADO CLIENTE

#SELECT c.nome_cliente, a.data_consulta, a.valor, a.pago 
#FROM agendamentos a
#JOIN clientes c ON c.id_cliente = a.id_cliente
#WHERE pago = FALSE AND a.id_cliente = X;

-- Ricardo (id_cliente = 6)

SELECT c.nome_cliente, a.data_consulta, a.valor, a.pago 
FROM agendamentos a
JOIN clientes c ON c.id_cliente = a.id_cliente
WHERE pago = FALSE AND a.id_cliente = 6;

#1-10.1) VISUALIZAR AGENDAMENTOS PAGOS

SELECT c.nome_cliente, a.data_consulta, a.valor, a.pago 
FROM agendamentos a
JOIN clientes c ON c.id_cliente = a.id_cliente
WHERE pago = TRUE;

#1-10.2) VISUALIZAR AGENDAMENTOS PAGOS DE DETERMINADO CLIENTE

#SELECT c.nome_cliente, a.data_consulta, a.valor, a.pago 
#FROM agendamentos a
#JOIN clientes c ON c.id_cliente = a.id_cliente
#WHERE pago = TRUE AND a.id_cliente = X;

-- Ricardo (id_cliente = 6)

SELECT c.nome_cliente, a.data_consulta, a.valor, a.pago 
FROM agendamentos a
JOIN clientes c ON c.id_cliente = a.id_cliente
WHERE pago = TRUE AND a.id_cliente = 6;

# VISUALIZAÇÃO - DENTISTA

#1-11) VISUALIZAR AGENDAMENTOS DO DIA 

#SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
#FROM agendamentos a
#JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
#JOIN clientes c ON c.id_cliente = a.id_cliente 
#WHERE DATE(data_consulta) = CURRENT_DATE() AND a.id_funcionario = X AND f.cargo = 'Dentista';

-- Joyce (id_funcionario = 6)

SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
FROM agendamentos a
JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
JOIN clientes c ON c.id_cliente = a.id_cliente 
WHERE DATE(data_consulta) = CURRENT_DATE() AND a.id_funcionario = 6 AND f.cargo = 'Dentista';


#1-12) VISUALIZAR AGENDAMENTOS DA SEMANA

#SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
#FROM agendamentos a
#JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
#JOIN clientes c ON c.id_cliente = a.id_cliente
#WHERE WEEK(data_consulta, 3) = WEEK(NOW(), 3) AND YEAR(data_consulta) = YEAR(NOW()) AND a.id_funcionario = X AND f.cargo = 'Dentista';

-- Joyce (id_funcionario = 6)

SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
FROM agendamentos a
JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
JOIN clientes c ON c.id_cliente = a.id_cliente
WHERE WEEK(data_consulta, 3) = WEEK(NOW(), 3) AND YEAR(data_consulta) = YEAR(NOW()) AND a.id_funcionario = 6 AND f.cargo = 'Dentista';

#1-13) VISUALIZAR AGENDAMENTOS DO MES

#SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
#FROM agendamentos a
#JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
#JOIN clientes c ON c.id_cliente = a.id_cliente
#WHERE MONTH(data_consulta) = MONTH(NOW()) 
#AND YEAR(data_consulta) = YEAR(NOW()) AND a.id_funcionario = X AND f.cargo = 'Dentista';

-- Joyce (id_funcionario = 6)

SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
FROM agendamentos a
JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
JOIN clientes c ON c.id_cliente = a.id_cliente
WHERE MONTH(data_consulta) = MONTH(NOW()) 
AND YEAR(data_consulta) = YEAR(NOW()) AND a.id_funcionario = 6 AND f.cargo = 'Dentista';

# VISUALIZAÇÃO - CLIENTE

#1-14) VISUALIZAR AGENDAMENTO ANTERIORES

#SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
#FROM agendamentos a
#JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
#JOIN clientes c ON c.id_cliente = a.id_cliente
#WHEREDATE(data_consulta) < CURRENT_DATE() AND a.id_cliente = X;

-- Ana (id_cliente = 1)

SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
FROM agendamentos a
JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
JOIN clientes c ON c.id_cliente = a.id_cliente
WHERE DATE(data_consulta) < CURRENT_DATE() AND a.id_cliente = 1;


#1-15) VISUALIZAR PRÓXIMOS AGENDAMENTO

#SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
#FROM agendamentos a
#JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
#JOIN clientes c ON c.id_cliente = a.id_cliente
#WHERE DATE(data_consulta) >= CURRENT_DATE() AND a.id_cliente = X;

-- Ana (id_cliente = 1)

SELECT f.nome_funcionario as nome_dentista, c.nome_cliente, a.data_consulta, a.valor, a.pago 
FROM agendamentos a
JOIN funcionarios f ON f.id_funcionario = a.id_funcionario
JOIN clientes c ON c.id_cliente = a.id_cliente
WHERE DATE(data_consulta) >= CURRENT_DATE() AND a.id_cliente = 1;

#1-16) VISUALIZAR CONVÊNIO MAIS UTILIZADO

SELECT cv.nome_convenio, COUNT(cl.id_cliente) AS total_clientes
FROM convenios cv
LEFT JOIN clientes cl ON cv.id_convenio = cl.id_convenio
GROUP BY cv.id_convenio
ORDER BY total_clientes DESC;

#1-17) VISUALIZAR CONFLITO DE HORÁRIOS

SELECT id_funcionario, data_consulta, COUNT(*) as consultas_no_mesmo_horario
FROM agendamentos
GROUP BY id_funcionario, data_consulta
HAVING COUNT(*) > 1;

#2) COMANDOS TABELA CLIENTES / CONVENIOS

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

#2-5) EXCLUSÃO DE UM CLIENTE QUE POSSUI CONSULTAS
#DELETE FROM agendamentos 
#WHERE id_cliente = X;

#DELETE FROM clientes 
#WHERE id_cliente = X;

-- João (id_cliente = 4)

DELETE FROM agendamentos 
WHERE id_cliente = 4;

DELETE FROM clientes 
WHERE id_cliente = 4;

# VISUALIZAÇÃO

#2-6) VISUALIZAR CONVENIO DO CLIENTE

#SELECT cv.nome_convenio, c.nome_cliente
#FROM convenios cv
#INNER JOIN clientes c
#ON cv.id_convenio = c.id_convenio
#WHERE c.id_cliente = X;

SELECT cv.nome_convenio, c.nome_cliente
FROM convenios cv
INNER JOIN clientes c
ON cv.id_convenio = c.id_convenio
WHERE c.id_cliente = 1;

#2-7) VISUALIZAR CONVENIO DOS CLIENTE

SELECT cv.nome_convenio, c.nome_cliente
FROM convenios cv
INNER JOIN clientes c
ON cv.id_convenio = c.id_convenio;

#2-8) VISUALIZAR TOTAL DE CLIENTES

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

#3-4) VISUALIZAR FUNCIONÁRIOS POR CARGO

#SELECT * FROM funcionarios WHERE cargo = 'cargo';

SELECT * FROM funcionarios WHERE cargo = 'Dentista';

#4) COMANDOS DA PARTE ADMINISTRATIVA

#4-1) VISUALIZAR FATURAMENTO BRUTO

SELECT SUM(valor) AS faturamento_realizado 
FROM agendamentos 
WHERE pago = TRUE;

#4-2) SELECIONAR LUCRO LÍQUIDO

SELECT 
    (SELECT SUM(valor) FROM agendamentos WHERE pago = TRUE) - 
    (SELECT SUM(salario) FROM funcionarios) AS lucro_liquido_estimado;

#4-3) VISUALIZAR FOLHA SALARIAL

SELECT SUM(salario) as folha_salaria FROM funcionarios;

#5) TABELAS APÓS EDIÇÃO

SELECT * FROM agendamentos;
SELECT * FROM funcionarios;
SELECT * FROM clientes;
