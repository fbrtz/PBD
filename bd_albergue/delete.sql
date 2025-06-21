-- Deletando um pagamento
DELETE FROM Pagamento WHERE id_pagamento = 2;

-- Deletando uma reserva vaga
DELETE FROM Reserva_Vaga WHERE id_reserva = 2 AND id_vaga = 5;

-- Deletando uma peculiaridade
DELETE FROM Peculiaridades WHERE nome = 'Ao Lado da Porta';

-- Deletando uma vaga
DELETE FROM Vaga WHERE id_vaga = 8;

-- Deletando um usuário
DELETE FROM Usuario WHERE id_usuario = 5;
