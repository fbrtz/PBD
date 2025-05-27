-- Mostrando todos clientes

SELECT id, nome, cpf, data_nasc, telefone, email
FROM Cliente;

-- Listando os serviços existentes com nome do profissional

SELECT 
    S.id AS id_servico,
    S.descricao AS servico,
    S.duracao_minutos,
    S.valor,
    P.nome AS profissional,
    E.nome AS especialidade
FROM Servico S
JOIN Profissional P ON S.id_profissional = P.id
JOIN Especialidade E ON S.id_especialidade = E.id;

-- Listando as reservas com nome dos clientes

SELECT 
    R.id AS id_reserva,
    C.nome AS cliente,
    R.data_hora,
    R.status,
    R.valor_pago,
    R.forma_pagamento
FROM Reserva R
JOIN Cliente C ON R.id_cliente = C.id;

-- Listando pacotes com os serviços que estão inclusos

SELECT 
    P.nome AS pacote,
    S.descricao AS servico,
    PR.nome AS profissional
FROM Pacote_Servico PS
JOIN Pacote P ON PS.id_pacote = P.id
JOIN Servico S ON PS.id_servico = S.id
JOIN Profissional PR ON PS.id_profissional = PR.id;

-- Listando os profissionais com especialidade

SELECT 
    PR.nome AS profissional,
    E.nome AS especialidade
FROM Profissional_Especialidade PE
JOIN Profissional PR ON PE.id_profissional = PR.id
JOIN Especialidade E ON PE.id_especialidade = E.id;