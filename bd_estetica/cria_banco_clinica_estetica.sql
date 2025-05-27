USE sistema_reservas_estetica;

-- Tabela: Cliente
CREATE TABLE Cliente (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(200),
    cpf VARCHAR(14),
    data_nasc DATE,
    telefone VARCHAR(13),
    email VARCHAR(100),
    PRIMARY KEY (id)
);

-- Tabela: Especialidade
CREATE TABLE Especialidade (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    descricao VARCHAR(300),
    PRIMARY KEY (id)
);

-- Tabela: Profissional
CREATE TABLE Profissional (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(200),
    cpf VARCHAR(14),
    email VARCHAR(100),
    telefone VARCHAR(13),
    PRIMARY KEY (id)
);

-- Tabela: Profissional_Especialidade (tabela de relacionamento N:N)
CREATE TABLE Profissional_Especialidade (
    id_especialidade INT NOT NULL,
    id_profissional INT NOT NULL,
    PRIMARY KEY (id_especialidade, id_profissional),
    FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id),
    FOREIGN KEY (id_profissional) REFERENCES Profissional(id)
);

-- Tabela: Servico
CREATE TABLE Servico (
    id INT NOT NULL AUTO_INCREMENT,
    id_profissional INT NOT NULL,
    id_especialidade INT NOT NULL,
    descricao VARCHAR(300),
    duracao_minutos INT,
    valor DECIMAL(10,2),
    PRIMARY KEY (id),
    FOREIGN KEY (id_profissional) REFERENCES Profissional(id),
    FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id)
);

-- Tabela: Pacote
CREATE TABLE Pacote (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80),
    descricao VARCHAR(500),
    valor_total DECIMAL(10,2),
    PRIMARY KEY (id)
);

-- Tabela: Pacote_Servico (relacionamento N:N)
CREATE TABLE Pacote_Servico (
    id_pacote INT NOT NULL,
    id_servico INT NOT NULL,
    id_profissional INT NOT NULL,
    PRIMARY KEY (id_pacote, id_servico, id_profissional),
    FOREIGN KEY (id_pacote) REFERENCES Pacote(id),
    FOREIGN KEY (id_servico) REFERENCES Servico(id),
    FOREIGN KEY (id_profissional) REFERENCES Profissional(id)
);

-- Tabela: Reserva
CREATE TABLE Reserva (
    id INT NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    data_hora TIMESTAMP,
    status VARCHAR(20),
    valor_pago DECIMAL(10,2),
    forma_pagamento VARCHAR(20),
    PRIMARY KEY (id),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id)
);

-- Tabela: Reserva_Servico (relacionamento N:N)
CREATE TABLE Reserva_Servico (
    id_reserva INT NOT NULL,
    id_servico INT NOT NULL,
    id_profissional INT NOT NULL,
    PRIMARY KEY (id_reserva, id_servico, id_profissional),
    FOREIGN KEY (id_reserva) REFERENCES Reserva(id),
    FOREIGN KEY (id_servico) REFERENCES Servico(id),
    FOREIGN KEY (id_profissional) REFERENCES Profissional(id)
);