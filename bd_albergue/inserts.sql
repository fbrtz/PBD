-- Usuarios
INSERT INTO Usuario (nome, cpf, data_nasc, telefone, email) VALUES
('João Silva', '12345678901', '2000-01-01', '11999999999', 'joao@email.com'),
('Maria Lima', '23456789012', '1995-05-10', '21988887777', 'maria@email.com'),
('Carlos Souza', '34567890123', '1990-03-15', '31977776666', 'carlos@email.com'),
('Ana Rocha', '45678901234', '1998-07-20', '41966665555', 'ana@email.com'),
('Paula Reis', '56789012345', '2001-09-25', '51955554444', 'paula@email.com');

-- Quartos
INSERT INTO Quarto (numero, num_vagas) VALUES
('101', 4),
('102', 8),
('103', 12),
('104', 4),
('105', 8);

-- Vagas
INSERT INTO Vaga (numero_vaga, id_quarto) VALUES
('1A', 1), ('1B', 1), ('1C', 1), ('1D', 1),
('2A', 2), ('2B', 2), ('2C', 2), ('2D', 2);

-- Reserva
INSERT INTO Reserva (data_inicio, data_reserva, num_diarias, status, id_usuario) VALUES
('2025-07-01 12:00:00', NOW(), 3, 'ativa', 1),
('2025-07-03 12:00:00', NOW(), 5, 'ativa', 2);

-- Reserva_Vaga
INSERT INTO Reserva_Vaga (id_reserva, id_vaga) VALUES
(1, 1), (1, 2), (2, 5);

-- Pagamento
INSERT INTO Pagamento (forma_pagamento, valor, status, data_pg, id_reserva) VALUES
('cartao_credito', 300.00, 'pago', NOW(), 1),
('pix', 500.00, 'pendente', NOW(), 2);

-- Peculiaridades
INSERT INTO Peculiaridades (nome, descricao) VALUES
('Beliche Superior', 'Cama na parte de cima do beliche'),
('Sol da Manhã', 'Recebe luz solar pela manhã'),
('Banheiro Privativo', 'Quarto possui banheiro'),
('Janela', 'Perto da janela'),
('Ao Lado da Porta', 'Vaga próxima à porta');

-- Quarto_Peculiaridades
INSERT INTO quarto_peculiaridades (id_quarto, id_peculiaridades) VALUES
(1, 3),
(3, 3),
(4, 3);

-- Vaga_Peculiaridades
INSERT INTO vaga_peculiaridades (id_vaga, id_peculiaridades) VALUES
(1, 2),
(2, 2),
(3, 1),
(4, 1);
