CREATE DATABASE Academia;
USE Academia;

-- Tabela Aluno
CREATE TABLE Aluno (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    nascimento DATE NOT NULL
);

-- Tabela Professor
CREATE TABLE Professor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL
);

-- Tabela Treino
CREATE TABLE Treino (
    numero INT PRIMARY KEY AUTO_INCREMENT,
    data DATE NOT NULL,
    aluno INT,
    professor INT,
    FOREIGN KEY (aluno) REFERENCES Aluno(codigo),
    FOREIGN KEY (professor) REFERENCES Professor(id)
);

-- Tabela Plano
CREATE TABLE Plano (
    aluno_codigo INT,
    treino_numero INT,
    PRIMARY KEY (aluno_codigo, treino_numero),
    FOREIGN KEY (aluno_codigo) REFERENCES Aluno(codigo),
    FOREIGN KEY (treino_numero) REFERENCES Treino(numero)
);

-- Tabela Exercicio
CREATE TABLE Exercicio (
    treino_numero INT,
    descricao VARCHAR(255),
    PRIMARY KEY (treino_numero, descricao),
    FOREIGN KEY (treino_numero) REFERENCES Treino(numero)
);

-- Inserir dados exemplo na tabela Aluno
INSERT INTO Aluno (nome, idade, nascimento) VALUES
('João Silva', 25, '1999-05-14'),
('Maria Oliveira', 30, '1993-08-22'),
('Pedro Costa', 22, '2002-03-11'),
('Ana Lima', 28, '1995-09-17'),
('Lucas Martins', 35, '1988-12-05');

-- Inserir dados exemplo na tabela Professor
INSERT INTO Professor (nome, especialidade) VALUES
('Carlos Santos', 'Musculação'),
('Ana Pereira', 'Yoga'),
('Marcos Almeida', 'CrossFit'),
('Sofia Carvalho', 'Pilates'),
('Ricardo Silva', 'Treinamento Funcional');

-- Inserir dados exemplo na tabela Treino
INSERT INTO Treino (data, aluno, professor) VALUES
('2024-08-30', 1, 1),
('2024-08-30', 2, 2),
('2024-09-01', 3, 3),
('2024-09-01', 4, 4),
('2024-09-02', 5, 5);

-- Inserir dados exemplo na tabela Plano
INSERT INTO Plano (aluno_codigo, treino_numero) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Inserir dados exemplo na tabela Exercicio
INSERT INTO Exercicio (treino_numero, descricao) VALUES
(1, 'Agachamento'),
(1, 'Flexão de Braços'),
(2, 'Cadeira Abdutora'),
(2, 'Puxada na Barra'),
(3, 'Burpee'),
(3, 'Levantamento Terra'),
(4, 'Alongamento de Coluna'),
(4, 'Prancha Abdominal'),
(5, 'Circuito Funcional'),
(5, 'Kettlebell Swing');
