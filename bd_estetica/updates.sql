-- Cliente
UPDATE Cliente SET telefone = '11999998888' WHERE id = 1;
UPDATE Cliente SET email = 'bruno123@gmail.com' WHERE id = 2;
UPDATE Cliente SET nome = 'Carla M. Mendes' WHERE id = 3;
UPDATE Cliente SET cpf = '00000000000' WHERE id = 4;
UPDATE Cliente SET data_nasc = '1996-01-01' WHERE id = 5;

-- Especialidade
UPDATE Especialidade SET descricao = 'Todos os tipos de cortes' WHERE id = 1;
UPDATE Especialidade SET nome = 'Manicure Gel' WHERE id = 2;
UPDATE Especialidade SET descricao = 'Spa completo para os pés' WHERE id = 3;
UPDATE Especialidade SET nome = 'Sobrancelha com linha' WHERE id = 4;
UPDATE Especialidade SET descricao = 'Cera morna e laser' WHERE id = 5;

-- Profissional
UPDATE Profissional SET telefone = '11988887777' WHERE id = 1;
UPDATE Profissional SET nome = 'Luciana A. Silva' WHERE id = 2;
UPDATE Profissional SET email = 'juliana_c@estetica.com' WHERE id = 3;
UPDATE Profissional SET cpf = '99999999999' WHERE id = 4;
UPDATE Profissional SET nome = 'Mariana D. Souza' WHERE id = 5;

-- Profissional_Especialidade (atualizando IDs)
UPDATE Profissional_Especialidade SET id_especialidade = 2 WHERE id_profissional = 1;
UPDATE Profissional_Especialidade SET id_especialidade = 3 WHERE id_profissional = 2;
UPDATE Profissional_Especialidade SET id_especialidade = 4 WHERE id_profissional = 3;
UPDATE Profissional_Especialidade SET id_especialidade = 5 WHERE id_profissional = 4;
UPDATE Profissional_Especialidade SET id_especialidade = 1 WHERE id_profissional = 5;

-- Servico
UPDATE Servico SET valor = 130.00 WHERE id = 1;
UPDATE Servico SET descricao = 'Esmaltação artística' WHERE id = 2;
UPDATE Servico SET duracao_minutos = 60 WHERE id = 3;
UPDATE Servico SET valor = 55.00 WHERE id = 4;
UPDATE Servico SET descricao = 'Depilação completa' WHERE id = 5;

-- Pacote
UPDATE Pacote SET valor_total = 210.00 WHERE id = 1;
UPDATE Pacote SET nome = 'Spa Total' WHERE id = 2;
UPDATE Pacote SET descricao = 'Pacote completo de depilação' WHERE id = 3;
UPDATE Pacote SET valor_total = 550.00 WHERE id = 4;
UPDATE Pacote SET nome = 'Beleza Final' WHERE id = 5;

-- Pacote_Servico
UPDATE Pacote_Servico SET id_profissional = 2 WHERE id_pacote = 1 AND id_servico = 1;
UPDATE Pacote_Servico SET id_servico = 1 WHERE id_pacote = 1 AND id_servico = 2;
UPDATE Pacote_Servico SET id_servico = 5 WHERE id_pacote = 2 AND id_servico = 3;
UPDATE Pacote_Servico SET id_servico = 2 WHERE id_pacote = 5 AND id_servico = 4;
UPDATE Pacote_Servico SET id_profissional = 3 WHERE id_pacote = 5 AND id_servico = 4;

-- Reserva
UPDATE Reserva SET status = 'Paga' WHERE id = 1;
UPDATE Reserva SET valor_pago = 55.00 WHERE id = 2;
UPDATE Reserva SET forma_pagamento = 'Cartão' WHERE id = 3;
UPDATE Reserva SET status = 'Remarcada' WHERE id = 4;
UPDATE Reserva SET data_hora = '2025-06-06 10:00:00' WHERE id = 5;

-- Reserva_Servico
UPDATE Reserva_Servico SET id_servico = 2 WHERE id_reserva = 1;
UPDATE Reserva_Servico SET id_profissional = 1 WHERE id_reserva = 2;
UPDATE Reserva_Servico SET id_servico = 4 WHERE id_reserva = 3;
UPDATE Reserva_Servico SET id_profissional = 5 WHERE id_reserva = 4;
UPDATE Reserva_Servico SET id_servico = 1 WHERE id_reserva = 5;