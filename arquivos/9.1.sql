/*================================================ */
/*===================        ===================== */
/*=================== INSERT ===================== */
/*===================        ===================== */
/*================================================ */


insert into pessoa(nome, senha, email, telefone)
values
('Erick Pietro Mário Fernandes','7b55f59d034002b5fdb7eee735c8846f','erickfernandes@ovale.com.br','(27)997279254'),
('Marcelo Gustavo Emanuel Moreira','995bf053c4694e1e353cfd42b94e4447','marcelogus@ambiente.sp.gov.br','(27)986501882'),
('Thales João Nunes','3a8aa14b09c007603f0c93151120b014','thalesjoaonunes@liv.com','(27)38841941'),
('Benedito Nathan Luís Novaes','670b5644a548cf40cd07963ac4c37e4e','bnathanlnovaes@pichler.com.br','(27)993126043'),
('Maitê Heloise Lopes','c1f23cd3becbef505cb431f169d8aa7f','maiteheloiselopes@atiara.com.br','(27)994124063'),
('Theo Augusto Luan da Rosa','7938414aed691e4bf32edcad0d7df0c6','theoaugustoluandarosa@likaleal.com.br','(27)989364712'),
('Joana Pietra da Paz','18f01959ff46071d73905d549cafde20','joanapietradapaz-98@econe.com.br','(27)987042659'),
('Adriana Pereira Pinto','a01183854d7e784f0455d559f4327d55','adrianapinto@lineubravo.com.br','(27)36192513'),
('Pedro Henrique Bryan Carlos da Rosa','c6cc8094c2dc07b700ffcc36d64e2138','pedrohenriquebryan-93@hospitalprovisao.org.br','(27)981627085'),
('Agatha Sônia Gonçalves','4d9c6c80e372442cb27b863b68576325','agathasoniagoncalves@asconinternet.com.br','(27)986769993'),

('Miguel e Louise Assessoria Jurídica ME','7b55f59d034002b5fdb7eee735c8846f','erickfernandes@ovale.com.br','(27)997279254'),
('Juliana e Giovana Gráfica ME','995bf053c4694e1e353cfd42b94e4447','marcelogus@ambiente.sp.gov.br','(27)986501882'),
('Emanuelly e Analu Telas Ltda','3a8aa14b09c007603f0c93151120b014','thalesjoaonunes@liv.com','(27)38841941'),
('João e Mateus Telas ME','670b5644a548cf40cd07963ac4c37e4e','bnathanlnovaes@pichler.com.br','(27)993126043'),
('Eliane e Mateus Adega ME','c1f23cd3becbef505cb431f169d8aa7f','maiteheloiselopes@atiara.com.br','(27)994124063'),
('Márcia e Manoel Telecom ME','7938414aed691e4bf32edcad0d7df0c6','theoaugustoluandarosa@likaleal.com.br','(27)989364712'),
('Edson e Severino Mudanças Ltda','18f01959ff46071d73905d549cafde20','joanapietradapaz-98@econe.com.br','(27)987042659'),
('Ana e Thomas Construções ME','a01183854d7e784f0455d559f4327d55','adrianapinto@lineubravo.com.br','(27)36192513'),
('Márcia e Manuela Buffet Ltda','c6cc8094c2dc07b700ffcc36d64e2138','pedrohenriquebryan-93@hospitalprovisao.org.br','(27)981627085'),
('Cauã e Marlene Contábil Ltda','4d9c6c80e372442cb27b863b68576325','agathasoniagoncalves@asconinternet.com.br','(27)986769993');

insert into pessoa_fisica(cpf, fk_pessoa_id)
values('167.913.697-60', 1),
    ('775.916.857-83', 2),
    ('204.471.367-55', 3),
    ('095.290.197-85', 5),
    ('236.698.327-18', 7),
    ('475.964.387-76', 4),
    ('489.767.237-67', 9),
    ('818.537.247-00', 6),
    ('965.595.987-21', 8),
    ('666.532.497-43', 10);

insert into pessoa_juridica(cnpj, fk_pessoa_id)
values('43.909.000/0001-11', 11),
    ('89.252.306/0001-49', 12),
    ('74.228.421/0001-00', 13),
    ('47.095.787/0001-86', 15),
    ('00.089.806/0001-06', 17),
    ('82.537.024/0001-49', 14),
    ('02.164.934/0001-94', 19),
    ('68.643.847/0001-28', 16),
    ('98.907.670/0001-90', 18),
    ('24.328.688/0001-00', 20);
    
INSERT INTO estado (nome)
VALUES
('Espírito Santo'),
('Rio de Janeiro'),
('São Paulo'),
('Minas Gerais'),
('Ceará');

INSERT INTO cidade (nome, FK_ESTADO_id)
VALUES
('Vitória', 1),
('Vila Velha', 1),
('Serra', 1),
('Guarapari', 1),
('Colatina', 1),
('Domingos Martins', 1),
('Brejetuba', 1),
('Linhares', 1),
('Aracruz', 1),
('São Mateus', 1),
('Niterói', 2),
('Guarulhos', 3),
('Belo Horizonte', 4),
('Fortaleza', 5);

INSERT INTO bairro (nome, FK_CIDADE_id)
VALUES
('Santo Antônio',1),
('Praia do Canto', 1),
('Jardim da Penha', 1),
('Centro', 1),
('Itapuã', 2),
('Barcelona', 3),
('Centro', 4),
('São Silvano', 5),
('Centro', 11),
('Bela Vista', 12),
('Europa', 13),
('Seis Bocas', 14);




INSERT INTO endereco(cep, logradouro, complemento, fk_bairro_id)
VALUES
('29176-139', 'Rua Fabiano Nunes Fraga',NULL , 2),
('29143-002', 'Rua Princesa Isabel', NULL,3),
('29177-045', 'Travessa Antônio Pereira Madruga',NULL,8),
('29200-390','Rua Angélica Lucarelli Amaral',NULL,4),
('29166-071','Avenida Blumenau',NULL,6),
('29703-240','Travessa Vitório Spalenza',NULL,6),
('29101-735','Avenida Antônio Gil Veloso', NULL, 5),
('29101-550','Rua Areia Branca', NULL, 5),
('29026-190','Travessa Leopoldino Francisco Miranda', NULL, 1),
('29055-300','Rua Doutor Eurico de Aguiar',NULL,1);


INSERT INTO cargo (nome)
VALUES
('Administrador'),
('Guarda');

INSERT INTO motorista(creditos, cnh, fk_pessoa_fisica_fk_pessoa_id)
VALUES(40.00, '30608920529',1),
(70.50, '78039267101',2),
(25.00, '85240405221',3),
(35.00, '75480331814',4),
(135.00, '52854332930',5),
(90.00, '48462317938',6),
(12.00, '28145504905',7),
(19.00, '53026073170',8),
(15.00, '58189756006',9),
(22.00, '48929931253',10);

INSERT INTO estacionamento(nome, qntVagas, valorHora, latitude, longitude, fk_pessoa_juridica_fk_pessoa_id, fk_endereco_id)
VALUES('estacionamento1', 15, 7.00, '23.03', '46.07', 11,1),
('estacionamento2', 13, 9.00, '23.43', '46.25',12,2),
('estacionamento3', 10, 12.00, '23.32', '46.32',13,3),
('estacionamento4', 20, 18.00, '23.54', '46.09',14,4),
('estacionamento5', 15, 7.00, '23.23', '46.03',15,5),
('estacionamento6', 12, 8.00, '22.54', '43.12',16,6),
('estacionamento7', 25, 13.00, '22.50', '43.10',17,7),
('estacionamento8', 20, 18.00, '22.43', '43.06',18,8),
('estacionamento9', 15, 10.00, '22.40', '43.20',19,9),
('estacionamento10', 30, 8.00, '22.34', '43.16',20,10);

INSERT INTO funcionario (matricula, dataadmissao, datademissao, fk_cargo_id, fk_pessoa_fisica_fk_pessoa_id, fk_pessoa_juridica_fk_pessoa_id)
VALUES
('111111','2011-12-11','2009-08-11',1,1,11),
('222222','2011-12-11','2009-08-11',1,2,12),
('333333','2011-12-11','2009-08-11',1,3,13),
('444444','2011-12-11','2009-08-11',1,4,14),
('555555','2011-12-11','2009-08-11',1,5,15),
('666666','2011-12-11','2009-08-11',1,6,16),
('777777','2011-12-11','2009-08-11',1,7,17),
('888888','2011-12-11','2009-08-11',1,8,18),
('999999','2011-12-11','2009-08-11',2,9,18),
('101010','2011-12-11','2009-08-11',2,10,18);

INSERT INTO veiculo(placa, marca, modelo, ano)
VALUES
('MPO-3532', 'Ferrari', 'F458 Italia F1', 2011),
('MPR-7233','Ford','Ranger XLT',1994),
('MQP-9904','Citroen', 'C4',2005),
('MQM-8002','Kia','Sportage EX',2008),
('MQN-9584','Fiat','Punto',2008),
('MRS-8034','Fiat','Strada',2012),
('MSW-2322','Ford','Fiesta',1996),
('MRC-9761','Fiat','Palio',2001),
('MTR-9121','Toyota','Hilux',1997),
('MQP-5564','Toyota','Corolla',2017);


/*================================================ */
/*===================        ===================== */
/*=================== SELECT ===================== */
/*===================        ===================== */
/*================================================ */

Select * from funcionario limit 5;
Select * from motorista limit 5;
Select * from veiculo limit 5;
Select * from cargo limit 5;
Select * from pessoa limit 5;
Select * from pessoa_fisica limit 5;
Select * from pessoa_juridica limit 5;
Select * from estacionamento limit 5;
Select * from bairro limit 5;
Select * from cidade limit 5;
Select * from estado limit 5;
Select * from endereco limit 5;