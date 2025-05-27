-- Apagando tudo do banco por vez

-- Reserva_Servico
DELETE FROM Reserva_Servico WHERE id_reserva = 5;
DELETE FROM Reserva_Servico WHERE id_reserva = 4;
DELETE FROM Reserva_Servico WHERE id_reserva = 3;
DELETE FROM Reserva_Servico WHERE id_reserva = 2;
DELETE FROM Reserva_Servico WHERE id_reserva = 1;

-- Reserva
DELETE FROM Reserva WHERE id = 5;
DELETE FROM Reserva WHERE id = 4;
DELETE FROM Reserva WHERE id = 3;
DELETE FROM Reserva WHERE id = 2;
DELETE FROM Reserva WHERE id = 1;

-- Pacote_Servico
DELETE FROM Pacote_Servico WHERE id_pacote = 5;
DELETE FROM Pacote_Servico WHERE id_pacote = 2;
DELETE FROM Pacote_Servico WHERE id_pacote = 1 AND id_servico = 4;
DELETE FROM Pacote_Servico WHERE id_pacote = 1 AND id_servico = 2;
DELETE FROM Pacote_Servico WHERE id_pacote = 1 AND id_servico = 1;

-- Pacote
DELETE FROM Pacote WHERE id = 5;
DELETE FROM Pacote WHERE id = 4;
DELETE FROM Pacote WHERE id = 3;
DELETE FROM Pacote WHERE id = 2;
DELETE FROM Pacote WHERE id = 1;

-- Servico
DELETE FROM Servico WHERE id = 5;
DELETE FROM Servico WHERE id = 4;
DELETE FROM Servico WHERE id = 3;
DELETE FROM Servico WHERE id = 2;
DELETE FROM Servico WHERE id = 1;

-- Profissional_Especialidade
DELETE FROM Profissional_Especialidade WHERE id_profissional = 5;
DELETE FROM Profissional_Especialidade WHERE id_profissional = 4;
DELETE FROM Profissional_Especialidade WHERE id_profissional = 3;
DELETE FROM Profissional_Especialidade WHERE id_profissional = 2;
DELETE FROM Profissional_Especialidade WHERE id_profissional = 1;

-- Profissional
DELETE FROM Profissional WHERE id = 5;
DELETE FROM Profissional WHERE id = 4;
DELETE FROM Profissional WHERE id = 3;
DELETE FROM Profissional WHERE id = 2;
DELETE FROM Profissional WHERE id = 1;

-- Especialidade
DELETE FROM Especialidade WHERE id = 5;
DELETE FROM Especialidade WHERE id = 4;
DELETE FROM Especialidade WHERE id = 3;
DELETE FROM Especialidade WHERE id = 2;
DELETE FROM Especialidade WHERE id = 1;

-- Cliente
DELETE FROM Cliente WHERE id = 5;
DELETE FROM Cliente WHERE id = 4;
DELETE FROM Cliente WHERE id = 3;
DELETE FROM Cliente WHERE id = 2;
DELETE FROM Cliente WHERE id = 1;