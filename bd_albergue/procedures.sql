-- Criando procedure 1
DELIMITER $$

DROP PROCEDURE IF EXISTS status_vaga_ocupada $$

CREATE PROCEDURE status_vaga_ocupada (
    IN p_id_vaga INT
)
BEGIN
    SELECT r.id_reserva,
           r.data_inicio,
           r.num_diarias,
           DATE_ADD(r.data_inicio, INTERVAL r.num_diarias DAY) AS data_saida
    FROM Reserva r
    JOIN Reserva_Vaga rv ON r.id_reserva = rv.id_reserva
    WHERE rv.id_vaga = p_id_vaga
      AND r.status = 'ativa';
END $$

DELIMITER ;

-- Criando procedure 2
DELIMITER $$
DROP PROCEDURE IF EXISTS vagas_disponiveis_periodo $$

CREATE PROCEDURE vagas_disponiveis_periodo (
    IN p_data_inicio DATETIME,
    IN p_data_fim DATETIME
)
BEGIN
    SELECT v.*
    FROM Vaga v
    LEFT JOIN Reserva_Vaga rv ON v.id_vaga = rv.id_vaga
    LEFT JOIN Reserva r ON rv.id_reserva = r.id_reserva
    WHERE r.id_reserva IS NULL
       OR NOT (
            r.data_inicio < p_data_fim
            AND DATE_ADD(r.data_inicio, INTERVAL r.num_diarias DAY) > p_data_inicio
        );
END $$

DELIMITER ;

-- Usando os procedures
    
-- Consultando uma vaga para saber quando acabará reserva, se houver
CALL status_vaga_ocupada(1);

-- Consultando as vagas livres dentro de um intervalo inicial e final
CALL vagas_disponiveis_periodo('2025-07-01 12:00:00','2025-07-05 12:00:00');
  