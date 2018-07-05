/*9.7 CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)*/

SELECT P.nome, F.dataadmissao, F.datademissao
FROM pessoa P
JOIN funcionario F
ON P.id = F.fk_pessoa_fisica_fk_pessoa_id
ORDER by P.nome;

SELECT F.datademissao, count(*)
FROM funcionario F
GROUP BY F.datademissao;

SELECT F.fk_cargo_id , C.nome, count(fk_cargo_id)
FROM funcionario F
JOIN cargo C ON C.id = F.fk_cargo_id
GROUP BY F.fk_cargo_id, C.nome;

SELECT P.nome, V.modelo, R.datareserva FROM veiculo_motorista VM
JOIN motorista M ON M.fk_pessoa_fisica_fk_pessoa_id = VM.fk_motorista_fk_pessoa_fisica_fk_pessoa_id
JOIN veiculo V ON V.id = VM.fk_veiculo_id
JOIN reserva R ON R.fk_motorista_fk_pessoa_fisica_fk_pessoa_id = M.fk_pessoa_fisica_fk_pessoa_id
JOIN pessoa P ON P.id = M.fk_pessoa_fisica_fk_pessoa_id
GROUP BY P.nome, V.modelo, R.datareserva
ORDER BY P.nome;

SELECT P.nome, R.horasaida - R.horareserva AS "tempo de permanência" FROM reserva R
JOIN vaga V ON V.id = R.fk_vaga_id
JOIN pessoa P ON P.id = R.fk_motorista_fk_pessoa_fisica_fk_pessoa_id
GROUP BY P.nome, R.horasaida, R.horareserva
HAVING R.horasaida - R.horareserva > '1:00:00';

SELECT ES.nome, COUNT(V.id) "Qntd vagas livres" FROM bairro B
JOIN endereco EN ON EN.fk_bairro_id = B.id
JOIN estacionamento ES ON ES.fk_endereco_id = EN.id
JOIN cidade C ON C.id = B.fk_cidade_id
JOIN vaga V ON V.fk_estacionamento_id = ES.id
WHERE V.status = 'livre'
GROUP BY ES.nome
ORDER BY COUNT(V.id) DESC;
