-- Criação do banco de dados
CREATE DATABASE mecanicaDosManos;
USE mecanicaDosManos;

-- Tabela Funcionarios
CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL UNIQUE,
    Especialidade VARCHAR(100) NOT NULL
);

-- Tabela Servicos
CREATE TABLE Servicos (
    Numero INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(100) NOT NULL,
    Preco DECIMAL(10, 2)
);

-- Tabela Veiculos
CREATE TABLE Veiculos (
    Placa VARCHAR(10) PRIMARY KEY,
    Tipo VARCHAR(100) NOT NULL,
    Modelo VARCHAR(100) NOT NULL
);

-- Inserir dados exemplo na tabela Funcionarios
INSERT INTO Funcionarios (Nome, Especialidade) VALUES
('João Silva', 'Mecânico Geral'),
('Maria Oliveira', 'Eletricista Automotiva');

-- Inserir dados exemplo na tabela Servicos
INSERT INTO Servicos (Descricao, Preco) VALUES
('Troca de Óleo', 150.00),
('Alinhamento', 100.00);

-- Inserir dados exemplo na tabela Veiculos
INSERT INTO Veiculos (Placa, Tipo, Modelo) VALUES
('ABC1234', 'Carro', 'Honda Civic'),
('XYZ5678', 'Moto', 'Yamaha Fazer 250');
