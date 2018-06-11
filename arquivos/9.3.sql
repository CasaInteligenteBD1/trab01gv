/*9.3 CONSULTAS QUE USAM OPERADORES L�GICOS, ARITM�TICOS E TABELAS OU CAMPOS RENOMEADOS (M�nimo 11)
a) Criar 5 consultas que envolvam os operadores l�gicos AND, OR e NOT.
*/
SELECT * FROM veiculo WHERE ano>2000 and ano<2010;
SELECT * FROM bairro where NOT (fk_cidade_id=1 OR fk_cidade_id=2);
SELECT * FROM bairro WHERE nome LIKE 'S%' OR nome LIKE 'C%';
SELECT * FROM reserva WHERE datareserva BETWEEN '2018-04-06' and '2018-04-21';
SELECT * FROM funcionario WHERE datademissao BETWEEN dataadmissao AND CURRENT_DATE;

/*b) Criar no m�nimo 3 consultas com operadores aritm�ticos.*/ 
SELECT p.id, p.nome "Motorista", r.horareserva, r.horasaida, r.horasaida - r.horareserva "Tempo de perman�ncia" FROM reserva r
JOIN motorista m ON r.fk_motorista_fk_pessoa_fisica_fk_pessoa_id = m.fk_pessoa_fisica_fk_pessoa_id
JOIN pessoa p ON m.fk_pessoa_fisica_fk_pessoa_id = p.id;

SELECT f.matricula, dataadmissao "Data Adminiss�o", datademissao "Data Demiss�o", datademissao - dataadmissao "Dura��o do emprego" FROM funcionario f
WHERE f.datademissao IS NOT NULL;

SELECT nome , valorhora, qntvagas, valorhora*qntvagas AS "Total bruto com todas as vagas em uso"  FROM estacionamento;

/*c) Criar no m�nimo 3 consultas com opera��o de renomear nomes de campos ou tabelas.*/
SELECT p.nome AS "Pessoas F�sicas" FROM pessoa p
JOIN pessoa_fisica pf ON p.id = pf.fk_pessoa_id
GROUP BY p.nome;

SELECT e.nome AS "Estacionamento", COUNT(v) AS "Total_Vagas" FROM estacionamento AS e
INNER JOIN vaga AS v ON e.id = v.fk_estacionamento_id 
GROUP BY e.nome;

SELECT COUNT(e) AS "Total Estacionamentos", SUM(qntvagas) AS "Total de Vagas" FROM estacionamento e;