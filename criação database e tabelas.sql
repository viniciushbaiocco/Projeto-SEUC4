CREATE DATABASE odonpuc;
USE odonpuc;

CREATE TABLE funcionarios (
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
nome_funcionario VARCHAR(50) NOT NULL,
sobrenome_funcionario VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
celular_funcionario CHAR(11) UNIQUE NOT NULL,
cargo VARCHAR(50) NOT NULL,
salario INT NOT NULL);

CREATE TABLE convenios (
id_convenio INT PRIMARY KEY AUTO_INCREMENT,
nome_convenio VARCHAR(100) DEFAULT NULL
);

CREATE TABLE clientes (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome_cliente VARCHAR(50) NOT NULL,
sobrenome_cliente VARCHAR(50),
nome_social VARCHAR(50),
idade CHAR(3) NOT NULL,
celular_cliente CHAR(11) UNIQUE NOT NULL,
cpf CHAR(11) UNIQUE NOT NULL,
id_convenio INT NOT NULL,
data_criacao_usuario DATETIME DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (id_convenio) REFERENCES convenios(id_convenio)
);

CREATE TABLE agendamentos (
id_agendamento INT PRIMARY KEY AUTO_INCREMENT,
id_funcionario INT NOT NULL,
id_cliente INT NOT NULL,
data_consulta DATETIME NOT NULL,
valor INT DEFAULT 00,
pago BOOLEAN DEFAULT FALSE,
FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario),
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente));

#auditoria - dia que gera pagamento registrado e criação dos clientes e funcionarios (pesquisa)

