CREATE DATABASE albergue_almeida;

USE albergue_almeida;

CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    cpf VARCHAR(13) NOT NULL UNIQUE,
    data_nasc DATETIME NOT NULL,
    telefone VARCHAR(13) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE Reserva (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    data_inicio DATETIME NOT NULL,
    data_reserva DATETIME NOT NULL,
    num_diarias INT NOT NULL,
    status ENUM('ativa', 'cancelada', 'finalizada') NOT NULL,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    forma_pagamento VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    status ENUM('pendente', 'pago', 'cancelado', 'estornado') NOT NULL,
    data_pg DATETIME NOT NULL,
    id_reserva INT NOT NULL,
    FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva)
);

CREATE TABLE Quarto (
    id_quarto INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(10) NOT NULL,
    num_vagas INT NOT NULL
);

CREATE TABLE Vaga (
    id_vaga INT AUTO_INCREMENT PRIMARY KEY,
    numero_vaga VARCHAR(10) NOT NULL,
    id_quarto INT NOT NULL,
    FOREIGN KEY (id_quarto) REFERENCES Quarto(id_quarto)
);

CREATE TABLE Reserva_Vaga (
    id_reserva INT NOT NULL,
    id_vaga INT NOT NULL,
    PRIMARY KEY (id_reserva, id_vaga),
    FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva),
    FOREIGN KEY (id_vaga) REFERENCES Vaga(id_vaga)
);

CREATE TABLE Peculiaridades (
    id_peculiaridades INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE Quarto_Peculiaridades (
    id_quarto INT NOT NULL,
    id_peculiaridades INT NOT NULL,
    PRIMARY KEY (id_quarto, id_peculiaridades),
    FOREIGN KEY (id_quarto) REFERENCES Quarto(id_quarto),
    FOREIGN KEY (id_peculiaridades) REFERENCES Peculiaridades(id_peculiaridades)
);

CREATE TABLE Vaga_Peculiaridades (
    id_vaga INT NOT NULL,
    id_peculiaridades INT NOT NULL,
    PRIMARY KEY (id_vaga, id_peculiaridades),
    FOREIGN KEY (id_vaga) REFERENCES Vaga(id_vaga),
    FOREIGN KEY (id_peculiaridades) REFERENCES Peculiaridades(id_peculiaridades)
);