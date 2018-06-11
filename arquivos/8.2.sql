/* ======= MODELO FISICO ============ */

CREATE TABLE PESSOA_JURIDICA (
    cnpj varchar(18) NOT NULL,
    FK_PESSOA_id int PRIMARY KEY NOT NULL
);

CREATE TABLE ENDERECO (
    id SERIAL PRIMARY KEY NOT NULL,
    cep varchar(9) NOT NULL,
    logradouro varchar(100) NOT NULL,
    complemento varchar(50),
    FK_BAIRRO_id int NOT NULL
);

CREATE TABLE FUNCIONARIO (
    matricula varchar(20) UNIQUE NOT NULL,
    dataAdmissao date NOT NULL,
    dataDemissao date,
    FK_PESSOA_FISICA_FK_PESSOA_id int PRIMARY KEY,
    FK_PESSOA_JURIDICA_FK_PESSOA_id int NOT NULL,
    FK_CARGO_id int NOT NULL
);

CREATE TABLE PESSOA (
    id SERIAL PRIMARY KEY NOT NULL,
    nome varchar(100) NOT NULL,
    telefone varchar(15) NOT NULL,
    email varchar(100) NOT NULL,
    senha varchar(35) NOT NULL
);

CREATE TABLE BAIRRO (
    id SERIAL PRIMARY KEY NOT NULL,
    nome varchar(100) NOT NULL,
    FK_CIDADE_id int NOT NULL
);

CREATE TABLE ESTACIONAMENTO (
    id SERIAL PRIMARY KEY NOT NULL,
    nome varchar(100) NOT NULL,
    valorHora money NOT NULL,
    qntVagas int DEFAULT 1,
    latitude varchar(15) NOT NULL,
    longitude varchar(15) NOT NULL,
    FK_PESSOA_JURIDICA_FK_PESSOA_id int NOT NULL,
    FK_ENDERECO_id int
);

CREATE TABLE CARGO (
    id SERIAL PRIMARY KEY NOT NULL,
    nome varchar(100) UNIQUE NOT NULL
);

CREATE TABLE CIDADE (
    id SERIAL PRIMARY KEY NOT NULL,
    nome varchar(100) NOT NULL,
    FK_ESTADO_id int NOT NULL
);

CREATE TABLE PESSOA_FISICA (
    cpf varchar(14) UNIQUE NOT NULL,
    FK_PESSOA_id int PRIMARY KEY NOT NULL
);

CREATE TABLE PAGAMENTO_ESTACIONAMENTO (
    id SERIAL PRIMARY KEY NOT NULL,
    valor money NOT NULL,
    data date NOT NULL,
    FK_MOTORISTA_FK_PESSOA_FISICA_FK_PESSOA_id int NOT NULL,
    FK_VAGA_id int NOT NULL
);

CREATE TABLE VAGA (
    id SERIAL PRIMARY KEY NOT NULL,
    numero int NOT NULL,
    andar int NOT NULL,
    status varchar(7) NOT NULL DEFAULT 'livre',
    latitude varchar(15) NOT NULL,
    longitude varchar(15) NOT NULL,
    FK_ESTACIONAMENTO_id int
);

CREATE TABLE ESTADO (
    id SERIAL PRIMARY KEY NOT NULL,
    nome varchar(18) NOT NULL
);

CREATE TABLE MOTORISTA (
    creditos money DEFAULT 0,
    cnh varchar(11) NOT NULL,
    FK_PESSOA_FISICA_FK_PESSOA_id int PRIMARY KEY
);

CREATE TABLE RESERVA (
    id SERIAL PRIMARY KEY NOT NULL,
    horaReserva time NOT NULL,
    dataReserva date NOT NULL,
    horaSaida time,
    FK_VEICULO_placa varchar(8) NOT NULL,
    FK_VAGA_id int NOT NULL,
    FK_MOTORISTA_FK_PESSOA_FISICA_FK_PESSOA_id int NOT NULL
);

CREATE TABLE RECARGA (
    id SERIAL PRIMARY KEY NOT NULL,
    valor money NOT NULL,
    FK_MOTORISTA_FK_PESSOA_FISICA_FK_PESSOA_id int NOT NULL,
    FK_FORMA_PAGAMENTO_id int NOT NULL
);

CREATE TABLE VEICULO (
    placa varchar(8) PRIMARY KEY NOT NULL,
    modelo varchar(30),
    ano int,
    marca varchar(50)
);

CREATE TABLE CARTAO (
    bandeira varchar(50) NOT NULL,
    numero varchar(30) NOT NULL,
    numParcelas int,
    FK_FORMA_PAGAMENTO_id int PRIMARY KEY NOT NULL,
    FK_TIPO_CARTAO_id int NOT NULL
);

CREATE TABLE PAYPAL (
    conta varchar(50) NOT NULL,
    FK_FORMA_PAGAMENTO_id int PRIMARY KEY NOT NULL
);

CREATE TABLE FORMA_PAGAMENTO (
    id SERIAL PRIMARY KEY NOT NULL
);

CREATE TABLE TIPO_CARTAO (
    id SERIAL PRIMARY KEY NOT NULL,
    descricao varchar(7) NOT NULL
);

CREATE TABLE FUNCIONARIO_ESTACIONAMENTO (
    FK_FUNCIONARIO_FK_PESSOA_FISICA_FK_PESSOA_id int NOT NULL,
    FK_ESTACIONAMENTO_id int
);

CREATE TABLE VEICULO_MOTORISTA (
    FK_VEICULO_placa varchar(8) NOT NULL,
    FK_MOTORISTA_FK_PESSOA_FISICA_FK_PESSOA_id int NOT NULL
);
 
ALTER TABLE PESSOA_JURIDICA ADD CONSTRAINT FK_PESSOA_JURIDICA_1
    FOREIGN KEY (FK_PESSOA_id)
    REFERENCES PESSOA (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_1
    FOREIGN KEY (FK_BAIRRO_id)
    REFERENCES BAIRRO (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE FUNCIONARIO ADD CONSTRAINT FK_FUNCIONARIO_1
    FOREIGN KEY (FK_PESSOA_FISICA_FK_PESSOA_id)
    REFERENCES PESSOA_FISICA (FK_PESSOA_id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE FUNCIONARIO ADD CONSTRAINT FK_FUNCIONARIO_2
    FOREIGN KEY (FK_PESSOA_JURIDICA_FK_PESSOA_id)
    REFERENCES PESSOA_JURIDICA (FK_PESSOA_id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE FUNCIONARIO ADD CONSTRAINT FK_FUNCIONARIO_3
    FOREIGN KEY (FK_CARGO_id)
    REFERENCES CARGO (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO_1
    FOREIGN KEY (FK_CIDADE_id)
    REFERENCES CIDADE (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE ESTACIONAMENTO ADD CONSTRAINT FK_ESTACIONAMENTO_1
    FOREIGN KEY (FK_PESSOA_JURIDICA_FK_PESSOA_id)
    REFERENCES PESSOA_JURIDICA (FK_PESSOA_id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE ESTACIONAMENTO ADD CONSTRAINT FK_ESTACIONAMENTO_2
    FOREIGN KEY (FK_ENDERECO_id)
    REFERENCES ENDERECO (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE CIDADE ADD CONSTRAINT FK_CIDADE_1
    FOREIGN KEY (FK_ESTADO_id)
    REFERENCES ESTADO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE PESSOA_FISICA ADD CONSTRAINT FK_PESSOA_FISICA_1
    FOREIGN KEY (FK_PESSOA_id)
    REFERENCES PESSOA (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE PAGAMENTO_ESTACIONAMENTO ADD CONSTRAINT FK_PAGAMENTO_ESTACIONAMENTO_1
    FOREIGN KEY (FK_MOTORISTA_FK_PESSOA_FISICA_FK_PESSOA_id)
    REFERENCES MOTORISTA (FK_PESSOA_FISICA_FK_PESSOA_id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE PAGAMENTO_ESTACIONAMENTO ADD CONSTRAINT FK_PAGAMENTO_ESTACIONAMENTO_2
    FOREIGN KEY (FK_VAGA_id)
    REFERENCES VAGA (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE VAGA ADD CONSTRAINT FK_VAGA_1
    FOREIGN KEY (FK_ESTACIONAMENTO_id)
    REFERENCES ESTACIONAMENTO (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE MOTORISTA ADD CONSTRAINT FK_MOTORISTA_1
    FOREIGN KEY (FK_PESSOA_FISICA_FK_PESSOA_id)
    REFERENCES PESSOA_FISICA (FK_PESSOA_id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_1
    FOREIGN KEY (FK_VEICULO_placa)
    REFERENCES VEICULO (placa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_2
    FOREIGN KEY (FK_VAGA_id)
    REFERENCES VAGA (id);
 
ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_3
    FOREIGN KEY (FK_MOTORISTA_FK_PESSOA_FISICA_FK_PESSOA_id)
    REFERENCES MOTORISTA (FK_PESSOA_FISICA_FK_PESSOA_id);
 
ALTER TABLE RECARGA ADD CONSTRAINT FK_RECARGA_1
    FOREIGN KEY (FK_MOTORISTA_FK_PESSOA_FISICA_FK_PESSOA_id)
    REFERENCES MOTORISTA (FK_PESSOA_FISICA_FK_PESSOA_id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE RECARGA ADD CONSTRAINT FK_RECARGA_2
    FOREIGN KEY (FK_FORMA_PAGAMENTO_id)
    REFERENCES FORMA_PAGAMENTO (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE CARTAO ADD CONSTRAINT FK_CARTAO_1
    FOREIGN KEY (FK_FORMA_PAGAMENTO_id)
    REFERENCES FORMA_PAGAMENTO (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE CARTAO ADD CONSTRAINT FK_CARTAO_2
    FOREIGN KEY (FK_TIPO_CARTAO_id)
    REFERENCES TIPO_CARTAO (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE PAYPAL ADD CONSTRAINT FK_PAYPAL_1
    FOREIGN KEY (FK_FORMA_PAGAMENTO_id)
    REFERENCES FORMA_PAGAMENTO (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE FUNCIONARIO_ESTACIONAMENTO ADD CONSTRAINT FK_FUNCIONARIO_ESTACIONAMENTO_0
    FOREIGN KEY (FK_FUNCIONARIO_FK_PESSOA_FISICA_FK_PESSOA_id)
    REFERENCES FUNCIONARIO (FK_PESSOA_FISICA_FK_PESSOA_id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE FUNCIONARIO_ESTACIONAMENTO ADD CONSTRAINT FK_FUNCIONARIO_ESTACIONAMENTO_1
    FOREIGN KEY (FK_ESTACIONAMENTO_id)
    REFERENCES ESTACIONAMENTO (id)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE VEICULO_MOTORISTA ADD CONSTRAINT FK_VEICULO_MOTORISTA_0
    FOREIGN KEY (FK_VEICULO_placa)
    REFERENCES VEICULO (placa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE VEICULO_MOTORISTA ADD CONSTRAINT FK_VEICULO_MOTORISTA_1
    FOREIGN KEY (FK_MOTORISTA_FK_PESSOA_FISICA_FK_PESSOA_id)
    REFERENCES MOTORISTA (FK_PESSOA_FISICA_FK_PESSOA_id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

/* ========= INSERT ============ */


ALTER SEQUENCE pessoa_id_seq RESTART;

INSERT INTO pessoa (nome, senha, email, telefone)
VALUES
('Erick Pietro Mário Fernandes','7b55f59d034002b5fdb7eee735c8846f','erickfernandes@ovale.com.br','(27)997279254'),
('Marcelo Gustavo Emanuel Moreira','995bf053c4694e1e353cfd42b94e4447','marcelogus@ambiente.sp.gov.br','(27)986501882'),
('Thales João Nunes','3a8aa14b09c007603f0c93151120b014','thalesjoaonunes@liv.com','(27)38841941'),
('Benedito Nathan Luís Novaes','670b5644a548cf40cd07963ac4c37e4e','bnathanlnovaes@pichler.com.br','(27)993126043'),
('Maitê Heloise Lopes','c1f23cd3becbef505cb431f169d8aa7f','maiteheloiselopes@atiara.com.br','(27)994124063'),
('Theo Augusto Luan da Rosa','7938414aed691e4bf32edcad0d7df0c6','theoaugustoluandarosa@likaleal.com.br','(27)989364712'),
('Joana Pietra da Paz','18f01959ff46071d73905d549cafde20','joanapietradapaz-98@econe.com.br','(27)987042659'),
('Adriana Pereira Pinto','a01183854d7e784f0455d559f4327d55','adrianapinto@lineubravo.com.br','(27)36192513'),
('Pedro Henrique Bryan Carlos da Rosa' , 'c6cc8094c2dc07b700ffcc36d64e2138' , 'pedrohenriquebryan-93@hospitalprovisao.org.br' , '(27)981627085'),
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


INSERT INTO pessoa_fisica (cpf, fk_pessoa_id)
VALUES
('167.913.697-60', 1),
('775.916.857-83', 2),
('204.471.367-55', 3),
('095.290.197-85', 5),
('236.698.327-18', 7),
('475.964.387-76', 4),
('489.767.237-67', 9),
('818.537.247-00', 6),
('965.595.987-21', 8),
('666.532.497-43', 10);


INSERT INTO pessoa_juridica (cnpj, fk_pessoa_id)
VALUES
('43.909.000/0001-11', 11),
('89.252.306/0001-49', 12),
('74.228.421/0001-00', 13),
('47.095.787/0001-86', 15),
('00.089.806/0001-06', 17),
('82.537.024/0001-49', 14),
('02.164.934/0001-94', 19),
('68.643.847/0001-28', 16),
('98.907.670/0001-90', 18),
('24.328.688/0001-00', 20);

ALTER SEQUENCE estado_id_seq RESTART;
INSERT INTO estado (nome)
VALUES
('Espírito Santo'),
('Rio de Janeiro'),
('São Paulo'),
('Minas Gerais'),
('Ceará');

ALTER SEQUENCE cidade_id_seq RESTART;
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

ALTER SEQUENCE bairro_id_seq RESTART;
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

ALTER SEQUENCE endereco_id_seq RESTART;
INSERT INTO endereco(cep, logradouro, complemento, fk_bairro_id)
VALUES
('29055-131', 'Avenida Nossa Senhora da Penha',NULL , 2),
('29143-002', 'Rua Princesa Isabel', NULL,4),
('29177-045', 'Travessa Antônio Pereira Madruga',NULL,8),
('29200-390','Rua Angélica Lucarelli Amaral',NULL,4),
('29166-071','Avenida Blumenau',NULL,6),
('29703-240','Travessa Vitório Spalenza',NULL,6),
('29101-735','Avenida Antônio Gil Veloso', NULL, 5),
('29101-550','Rua Areia Branca', NULL, 5),
('29026-190','Travessa Leopoldino Francisco Miranda', NULL, 1),
('29055-300','Rua Doutor Eurico de Aguiar',NULL,1);

ALTER SEQUENCE cargo_id_seq RESTART;
INSERT INTO cargo (nome)
VALUES
('Administrador'),
('Guarda');

INSERT INTO motorista(creditos, cnh, fk_pessoa_fisica_fk_pessoa_id)
VALUES
(40.00, '30608920529',1),
(70.50, '78039267101',2),
(25.00, '85240405221',3),
(35.00, '75480331814',4),
(135.00, '52854332930',5),
(90.00, '48462317938',6),
(12.00, '28145504905',7),
(19.00, '53026073170',8),
(15.00, '58189756006',9),
(22.00, '48929931253',10);


ALTER SEQUENCE estacionamento_id_seq RESTART;
INSERT INTO estacionamento(nome, qntVagas, valorHora, latitude, longitude, fk_pessoa_juridica_fk_pessoa_id, fk_endereco_id)
VALUES
('Flanelinhas Express', 5, 7.00, '23.03', '46.07', 11,2),
('Estapar Reta da Penha', 5, 9.00, '23.43', '46.25',12,1),
('Estapar Centro', 5, 18.00, '23.54', '46.09',12,4),
('Maxpark São Silvano', 5, 12.00, '23.32', '46.32',13,3),
('Estacionamento Maneirão', 5, 18.00, '23.60', '46.12',14,4),
('Car Park Barcelona', 5, 7.00, '23.23', '46.03',15,5),
('Montanha Road', 5, 8.00, '22.54', '43.12',16,6),
('Maxpark Itapuã', 5, 13.00, '22.50', '43.10',17,7),
('Car Park Itapuã', 5, 18.00, '22.43', '43.06',18,8),
('Santuba Park',  5, 10.00, '22.40', '43.20',19,9);


INSERT INTO funcionario (matricula, dataadmissao, datademissao, fk_cargo_id, fk_pessoa_fisica_fk_pessoa_id, fk_pessoa_juridica_fk_pessoa_id)
VALUES
('111111','2009-08-23','2010-07-11',1,1,11),
('222222','2010-07-09',NULL,1,2,12),
('333333','2009-08-11',NULL,1,3,13),
('444444','2009-06-30','2011-07-13',1,4,14),
('555555','2010-03-08','2010-12-20',1,5,15),
('666666','2009-11-05',NULL,1,6,16),
('777777','2010-01-03',NULL,1,7,17),
('888888','2010-04-25',NULL,1,8,18),
('999999','2009-07-13',NULL,2,9,19),
('101010','2010-09-22','2011-12-22',2,10,20);


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


ALTER SEQUENCE vaga_id_seq RESTART;
INSERT INTO vaga (status, latitude, longitude, numero, andar, fk_estacionamento_id)
VALUES
/*Flanelinhas Express 1*/
('ocupada', '23.21', '46.01', 1, 1, 1),
('livre', '23.21', '46.02', 2, 1, 1),
('livre', '23.21', '46.03', 3, 1, 1),
('livre', '23.21', '46.04', 4, 1, 1),
('livre', '23.21', '46.05', 5, 1, 1),
/*Estapar Reta da Penha 2*/
('livre', '23.10', '46.51', 1, 1, 2),
('livre', '23.10', '46.52', 2, 1, 2),
('livre', '23.10', '46.53', 3, 1, 2),
('livre', '23.10', '46.54', 4, 1, 2),
('livre', '23.10', '46.55', 5, 1, 2),
/*Estapar Centro 3*/
('livre', '23.24', '46.31', 1, 1, 3),
('livre', '23.24', '46.32', 2, 1, 3),
('livre', '23.24', '46.33', 3, 1, 3),
('livre', '23.24', '46.34', 4, 1, 3),
('livre', '23.24', '46.35', 5, 1, 3),
/*Maxpark São Silvano 4*/
('ocupada', '10.43', '46.21', 1, 1, 4),
('livre', '10.43', '46.22', 2, 1, 4),
('livre', '10.43', '46.23', 3, 1, 4),
('livre', '10.43', '46.24', 4, 1, 4),
('livre', '10.43', '46.25', 5, 1, 4),
/*Estacionamento Maneirão 5*/
('ocupada' , '23.10' , '43.11' , 1 , 1, 5),
('livre' , '23.20' , '43.12' , 2 , 1 , 5),
('livre' , '23.20' , '43.13' , 3 , 1 , 5),
('livre' , '23.20' , '43.14' , 4 , 1 , 5),
('livre' , '23.20' , '43.15' , 5 , 1 , 5),
/*Car Park Barcelona 6*/
('livre' , '20.51' , '31.11' , 1 , 1 , 6),
('livre' , '20.51' , '31.12' , 2 , 1 , 6),
('livre' , '20.51' , '31.13' , 3 , 1 , 6),
('livre' , '20.51' , '31.14' , 4 , 1 , 6),
('livre' , '20.51' , '31.15' , 5 , 1 , 6),
/*Montanha Road 7*/
('livre', '35.50', '43.21', 1, 1, 7),
('livre', '35.50', '43.22', 2, 1, 7),
('livre', '35.50', '43.23', 3, 1, 7),
('livre', '35.50', '43.24', 4, 1, 7),
('livre', '35.50', '43.25', 5, 1, 7),
/*Maxpark Itapuã 8*/
('ocupada', '23.73', '42.21', 1, 1, 8),
('livre', '25.73', '42.22', 2, 1, 8),
('livre', '25.73', '42.23', 3, 1, 8),
('livre', '25.73', '42.24', 4, 1, 8),
('livre', '25.73', '42.25', 5, 1, 8),
/*Car Park Itapuã 9*/
('ocupada', '23.79', '43.11', 1, 1, 9),
('livre', '25.79', '43.12', 2, 1, 9),
('livre', '25.79', '43.13', 3, 1, 9),
('livre', '25.79', '43.14', 4, 1, 9),
('livre', '25.79', '43.15', 5, 1, 9),
/*Santuba Park 10*/
('livre', '23.85', '43.11', 1, 1, 10),
('livre', '23.85', '43.12', 2, 1, 10),
('livre', '23.85', '43.13', 3, 1, 10),
('livre', '23.85', '43.14', 4, 1, 10),
('livre', '23.85', '43.15', 5, 1, 10);


ALTER SEQUENCE reserva_id_seq RESTART;
INSERT INTO reserva (horaReserva, dataReserva, horaSaida, fk_veiculo_placa, fk_vaga_id, fk_motorista_fk_pessoa_fisica_fk_pessoa_id)
VALUES
('10:30' , '2018-04-04', '11:30','MPO-3532', 1, 1),
('14:20', '2018-04-06', '15:20' , 'MPR-7233' , 2, 2),
('07:30', '2018-04-07', '08:30' , 'MQP-9904' , 3, 3),
('09:30', '2018-04-07', '10:30' , 'MQM-8002' , 4, 4),
('13:30', '2018-04-16', '15:30' , 'MQN-9584' , 5, 5),
('18:55', '2018-04-17', '19:55' , 'MRS-8034' , 6, 6),
('10:30', '2018-04-21', '11:30' , 'MSW-2322' , 7, 7),
('17:30', '2018-04-21', '18:30' , 'MRC-9761' , 8, 8),
('10:30', '2018-04-22', '11:30' , 'MTR-9121' , 9, 9),
('17:30', '2018-04-22', '11:30' , 'MQP-5564' , 10, 10);

