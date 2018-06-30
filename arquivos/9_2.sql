SELECT id, numero, andar, status, fk_estacionamento_id FROM vaga WHERE status = 'ocupada';
SELECT id, nome AS Estacionamento, valorhora FROM estacionamento WHERE CAST(valorhora AS numeric) <= 10;
SELECT nome AS Cidade from cidade WHERE fk_estado_id = 8;
SELECT * FROM funcionario WHERE fk_cargo_id = 1;
SELECT * FROM reserva WHERE datareserva = '2018-04-22';
