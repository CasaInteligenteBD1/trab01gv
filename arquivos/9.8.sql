SELECT pe.nome, pe.email FROM
pessoa as pe 
RIGHT JOIN pessoa_fisica as pef 
ON pe.id = pef.fk_pessoa_id;

SELECT pef.cpf, moto.creditos FROM
pessoa_fisica as pef 
RIGHT JOIN motorista as moto
ON pef.fk_pessoa_id = moto.fk_pessoa_fisica_fk_pessoa_id

SELECT pej.cnpj, est.nome FROM
pessoa_juridica as pej 
LEFT JOIN estacionamento as est
ON pej.fk_pessoa_id = est.fk_pessoa_juridica_fk_pessoa_id

SELECT pe.nome, pej.cnpj, pe.email FROM
pessoa_juridica as pej
LEFT JOIN pessoa as pe 
ON pej.fk_pessoa_id = pe.id