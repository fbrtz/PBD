-- Atualizando telefone de um usuário
UPDATE Usuario SET telefone = '11911112222' WHERE id_usuario = 1;

-- Atualizando status da reserva
UPDATE Reserva SET status = 'finalizada' WHERE id_reserva = 1;

-- Atualizando forma de pagamento
UPDATE Pagamento SET forma_pagamento = 'boleto' WHERE id_pagamento = 2;

-- Atualizando número de vagas de um quarto
UPDATE Quarto SET num_vagas = 6 WHERE id_quarto = 2;

-- Atualizando descrição de uma peculiaridade
UPDATE Peculiaridades SET descricao = 'Sol pela manhã e tarde' WHERE nome = 'Sol da Manhã';