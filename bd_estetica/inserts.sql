-- INSERT EM CLIENTE COM ARQUIVO

LOAD DATA INFILE 'C:/Users/fabio/OneDrive/Desktop/bd_estetica/dados.csv'
INTO TABLE cliente
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id, nome, cpf, email,data_nasc,telefone);

-- Inserindo Clientes
INSERT INTO Cliente (nome, cpf, data_nasc, telefone, email) VALUES
('Ana Souza', '12345678901', '1990-03-15', '11912345678', 'ana@gmail.com'),
('Bruno Lima', '23456789012', '1985-06-22', '11923456789', 'bruno@gmail.com'),
('Carla Mendes', '34567890123', '1992-09-10', '11934567890', 'carla@gmail.com'),
('Daniel Rocha', '45678901234', '1980-12-05', '11945678901', 'daniel@gmail.com'),
('Eduarda Silva', '56789012345', '1995-04-27', '11956789012', 'eduarda@gmail.com');

-- Inserindo Especialidades
INSERT INTO Especialidade (nome, descricao) VALUES
('Cabeleireiro', 'Corte, escova, coloração e hidratação'),
('Manicure', 'Esmaltação, francesinha, alongamento de unhas'),
('Pedicure', 'Cuidados com os pés e unhas'),
('Design de sobrancelhas', 'Modelagem, coloração e henna'),
('Depilação', 'Cera quente, fria e laser');

-- Inserindo Profissionais
INSERT INTO Profissional (nome, cpf, email, telefone) VALUES
('Fernanda Gomes', '11111111111', 'fernanda@estetica.com', '11911112222'),
('Luciana Alves', '22222222222', 'luciana@estetica.com', '11922223333'),
('Juliana Costa', '33333333333', 'juliana@estetica.com', '11933334444'),
('Patrícia Lima', '44444444444', 'patricia@estetica.com', '11944445555'),
('Mariana Dias', '55555555555', 'mariana@estetica.com', '11955556666');

-- Relacionando Profissionais e Especialidades
INSERT INTO Profissional_Especialidade VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

-- Inserindo Serviços
INSERT INTO Servico (id_profissional, id_especialidade, descricao, duracao_minutos, valor) VALUES
(1, 1, 'Corte feminino com hidratação', 60, 120.00),
(2, 2, 'Manicure completa com esmaltação em gel', 45, 50.00),
(3, 3, 'Pedicure com spa dos pés', 50, 60.00),
(4, 4, 'Design de sobrancelhas com henna', 40, 45.00),
(5, 5, 'Depilação a laser meia perna', 30, 150.00);

-- Inserindo Pacotes
INSERT INTO Pacote (nome, descricao, valor_total) VALUES
('Beleza Total', 'Corte, manicure e design de sobrancelhas', 200.00),
('Spa dos Pés', 'Pedicure + massagem nos pés', 100.00),
('Depilação Completa', 'Perna, braço, axila', 300.00),
('Dia da Noiva', 'Cabeleireiro, manicure, design, massagem', 500.00),
('Toque Final', 'Design + manicure', 90.00);

-- Relacionando Pacotes e Serviços
INSERT INTO Pacote_Servico VALUES
(1, 1, 1), (1, 2, 2), (1, 4, 4), (2, 3, 3), (5, 4, 4);

-- Inserindo Reservas
INSERT INTO Reserva (id_cliente, data_hora, status, valor_pago, forma_pagamento) VALUES
(1, '2025-06-01 10:00:00', 'Confirmada', 120.00, 'Crédito'),
(2, '2025-06-02 11:00:00', 'Confirmada', 50.00, 'Crédito'),
(3, '2025-06-03 12:00:00', 'Pendente', 60.00, 'Crédito'),
(4, '2025-06-04 13:00:00', 'Confirmada', 45.00, 'Crédito'),
(5, '2025-06-05 14:00:00', 'Cancelada', 0.00, 'Crédito');

-- Relacionando Reservas com Serviços
INSERT INTO Reserva_Servico VALUES
(1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5);
