-- Consultando as vagas livres dentro de um intervalo inicial e final
SELECT v.*
FROM Vaga v
LEFT JOIN Reserva_Vaga rv ON v.id_vaga = rv.id_vaga
LEFT JOIN Reserva r ON rv.id_reserva = r.id_reserva
WHERE r.id_reserva IS NULL
   OR NOT (
        r.data_inicio < '2025-07-05 12:00:00'
        AND DATE_ADD(r.data_inicio, INTERVAL r.num_diarias DAY) > '2025-07-01 12:00:00'
    );
    
-- Consultando uma vaga para saber quando acabará reserva, se houver
SELECT r.id_reserva,
       r.data_inicio,
       r.num_diarias,
       DATE_ADD(r.data_inicio, INTERVAL r.num_diarias DAY) AS data_saida
FROM Reserva r
JOIN Reserva_Vaga rv ON r.id_reserva = rv.id_reserva
WHERE rv.id_vaga = 1
  AND r.status = 'ativa';
  
-- Consultando as vagas dada uma ou mais peculiaridade
SELECT 
    v.id_vaga,
    v.numero_vaga,
    q.numero AS numero_quarto,
    GROUP_CONCAT(p.descricao SEPARATOR ', ') AS peculiaridades
FROM 
    Vaga v
JOIN Quarto q ON v.id_quarto = q.id_quarto
JOIN Vaga_Peculiaridades vp ON v.id_vaga = vp.id_vaga
JOIN Peculiaridades p ON vp.id_peculiaridades = p.id_peculiaridades
WHERE 
    p.nome IN ('Sol da Manhã')  -- filtro pela peculiaridade desejada
GROUP BY 
    v.id_vaga, v.numero_vaga, q.numero;
    
-- Consultando todas vagas com peculiaridade em um quarto
SELECT 
    v.id_vaga,
    v.numero_vaga,
    q.id_quarto,
    q.numero AS numero_quarto,
    GROUP_CONCAT(p.descricao ORDER BY p.descricao SEPARATOR ', ') AS peculiaridades
FROM 
    Vaga v
JOIN Quarto q ON v.id_quarto = q.id_quarto
LEFT JOIN Vaga_Peculiaridades vp ON v.id_vaga = vp.id_vaga
LEFT JOIN Peculiaridades p ON vp.id_peculiaridades = p.id_peculiaridades
WHERE 
    q.numero = '101'  -- ou q.id_quarto = 5, dependendo do filtro desejado
GROUP BY 
    v.id_vaga, v.numero_vaga, q.id_quarto, q.numero;