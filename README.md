# TRABALHO 01:  estacIonA.
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>

David Moura: mouradavid8@gmail.com<br>
Leonardo Arpini: leonardoarpini@gmail.com<br>
Luciano Ananias: luciano.ananias.42@gmail.com <br>
Thiago Alves: thiagofelicio@hotmail.com<br>
<br>
<b>Grupo de Análise</b><br>
Andreângelo Patuzzo: andreangelo.pp@gmail.com<br>
Anne Caroline Silva: carolinesilva4@gmail.com<br>
Caicke Carvalho de Pinheiro: caicke@gmail.com<br>
Emanuel Rampinelli: emanuel_rampinelli@hotmail.com<br>


### 2. INTRODUÇÃO E MOTIVAÇÃO<br>

O projeto estacIonA tem a finalidade de facilitar a vida das pessoas que precisam estacionar seus veículos em grandes centros urbanos, onde há grande concorrência por vagas de estacionamento.

A grande necessidade dos motoristas em estacionar seus carros nos grandes centros, somada a grande concorrência das vagas, que por sua vez geram uma perda de tempo e estresse aos motoristas gera uma oportunidade de negócio junto aos estacionamentos privativos, na qual um cliente poderá pagar pela reserva de uma vaga, garantindo-a e evitando possíveis transtornos para se achar uma vaga posteriormente, com a comodidade de realizar essa tarefa pelo seu smartphone de onde estiver.


### 3.MINI-MUNDO<br>

O estacIonA é um sistema desenvolvido para atender empresas de estacionamento privadas, localizadas em grandes centros urbanos, as quais possuem características comuns como funcionários administradores e guardas. Cada empresa poderá cadastrar no sistema todos os seus estacionamentos.

O estacIonA permitirá que os clientes (motoristas) escolham um dos estacionamentos cadastrados no estacIonA e então visualizem as vagas livres e ocupadas desse estacionamento. A partir daí, os clientes poderão escolher uma das vagas livres e efetuar uma reserva, tudo isso de maneira remota através de aplicativo em seus smartphones.

Após escolher uma vaga livre, para reservá-la, o motorista deverá dar informações do veículo que vai ocupar a vaga, informar o horário de sua entrada na vaga e ter créditos suficientes em sua conta no estacIonA, pois para efetuar a reserva serão debitados o valor referente a uma hora de uso de uma vaga de um determinado estacionamento, garantindo assim sua vaga por uma hora. A reserva faz com que o motorista garanta a utilização de uma determinada vaga por uma hora, a contar a partir da hora de entrada na vaga que ele informou. Qualquer reserva tem duração de uma hora.

Quando um motorista sair de sua vaga, o sistema verificará sua situação que poderão ser uma das duas:

1. O motorista utilizou a vaga dentro do tempo da reserva (uma hora), então o sistema entende que este motorista não possui débitos com o estacionamento e então pode ser liberado.

2. O motorista utilizou a vaga além do tempo da reserva (mais de uma hora), então o sistema gerará uma cobrança com o valor que este motorista terá que pagar. Após o pagamento desta cobrança, também feita pelo aplicativo, o sistema reconhecerá que a saída do motorista do estacionamento está permitida.

A situação 2 acima, permite que um motorista utilize a vaga do estacionamento que ele reservou por um tempo indeterminado.

De um veículo, é importante armazenar as informações de ano, marca, modelo e a placa.

Um motorista poderá financiar a recarga de seus créditos em sua conta no estacIonA utilizando cartão de crédito ou débito ou payPal. Se a recarga for feita através de cartão de crédito, então será possível parcelar em até três vezes o valor da recarga e não haverá cobrança de juros.

É importante que se armazene o número e a bandeira do cartão e a conta payPal dos motoristas.

É importante que se guarde o histórico de reservas realizadas.

Funcionários administradores poderão cadastrar, editar e excluir vagas e estacionamentos e saber quais vagas estão ocupadas ou livres de forma visual. O guarda poderá apenas visualizar as vagas livres e ocupadas do estacionamento que está vigiando

Quanto às informações de cada estacionamento, serão armazenadas nome, quantidade de vagas, valor da hora de utilização de uma vaga, sua localização para o GPS (latitude e longitude) e seu endereço.

Sobre a vaga, é importante saber a qual estacionamento ela pertence, o número do andar, o seu número identificador, e sua localização para o GPS (latitude e longitude).

Do motorista, serão armazenados nome, telefone, email, CPF e o número da sua CNH.

Do funcionário, serão armazenados nome, telefone, email, CPF, matrícula, data de admissão, data de demissão e o seu cargo (admInistrador ou guarda).

De uma empresa de estacionamentos, serão armazenados nome, telefone, email e CNPJ.

<br>

<b>Link do protótipo:</b> ![Protótipo EstacIonA](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/prototipoTelasEstaciona.pdf)<br>

#### 4.1 TABELA DE DADOS DO SISTEMA:
![Tabela de dados v0.1](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/4_1_tabela_de_dados_estacIonA.xlsx)<br>
![Tabelas de dados v0.2](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/tabela_dividida.xlsx)


#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?<br>
   > O sistema fornecerá relatórios sobre a vaga que foi reservada e as informações do cliente, da empresa responsável pela vaga, da reserva (preço, data) e do veículo do cliente. Os principais relatórios obtidos são: <br><br>
    - Vagas disponíveis;<br>
    - Relatório sobre determinada vaga;<br>
    - Relatório sobre a reserva da vaga;<br>
    - Relatório sobre determinado cliente;<br>
    - Histórico de reservas de determinado cliente;<br>
    - Créditos restantes de um determinado cliente;<br>
    - Relatório da empresa responsável pela vaga;<br>
    - Relatório do administrador da empresa responsável;<br>
    - Relatório sobre o veículo de determinada reserva;<br>
    - Histórico de veículos estacionados em determinada vaga.
    
    
>## Marco de Entrega 01 em: (02/04/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
       
![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/diagrama%20e%20modelos/modConceitual_4.png?raw=true "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
        
![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/diagrama%20e%20modelos/Diagrama_Classe_Estaciona_4.png?raw=true "Diagrama de Classes")
    
#### 5.1 Validação do Modelo Conceitual
  <b>Grupo RFID/EasyMarket:</b> Antônio Carlos Durães, Jennifer Gonçalves, Joel Will e Larissa Motta<br>
  <b>Grupo da Vaga (nossos clientes):</b> Leonardo Arpini, Luciano Ananias, David Moura e Thiago Alves
               

#### 5.2 DECISÕES DE PROJETO
        
<b>Pessoa:</b> decidimos utilizar uma tabela “PESSOA” para armazenar as informações de todo cliente, seja ele uma pessoa física ou uma pessoa jurídica.<br>

<b>Endereço:</b> decompomos o “ENDERECO” em  campos "estado", "cidade", "bairro", para seguir as regras de normalização.<br>

<b>Pagamento:</b> dividimos o pagamento em dois momentos diferentes. Um é realizado logo após a reserva da vaga (“PAGAMENTO_RESERVA”) e o outro é realizado após sair do estacionamento, caso ele permaneça mais tempo do que ele agendou (“PAGAMENTO_ESTACIONAMENTO”). Por exemplo, um cliente reservou uma vaga de 10:00 às 11:00, porém ele saiu somente às 14:00. Logo, para evitarmos conflito, o pagamento será dividido em duas etapas.<br>

<b>Funcionário:</b> No nosso sistema, existem dois cargos de funcionários: o de administrador do estacionamento da empresa, que possui poder de editar/cadastrar/excluir um determinado estacionamento e o de guarda, que só visualiza as vagas disponíveis. Portanto, utilizamos uma tabela “FUNCIONARIO”, com o campo “cargo”.<br>

Foi determinado, junto ao cliente, que qualquer motorista, para efetuar uma reserva de vaga, deve pagar, no momento que a faz, o valor de uma hora de utilização do estacionamento. O que garante a utilização da vaga também por uma hora para o motorista.<br>

Latitude e longitude foram separadas para as tabelas Estacionamento e Vaga pois estacionamentos guardarão coordenadas de GPS reais e as vagas guardarão coordenadas em pixels de uma imagem que representará as vagas de um estacionamento.

Foi decidido, por questões de escopo do projeto, que as tabelas FORMA_PAGAMENTO, CARTAO, PAYPAL e TIPO_CARTAO não serão implementadas devidamente. Ficando essas atualizações para uma futura modificação.

>## Marco de Entrega 02 em: (23/04/2018)<br>


#### 5.3 DESCRIÇÃO DOS DADOS 
    
<b>Pessoa:</b> tabela que armazena as informações comuns entre pessoa jurídica, motorista e funcionário.<br>
<b>id:</b> campo que identifica a pessoa;<br>
<b>nome:</b> campo que armazena o nome completo da pessoa;<br>
<b>senha:</b> campo que armazena a senha (em md5) da pessoa.<br>
<b>telefone:</b> campo que armazena o telefone de contato da pessoa;<br>
<b>email:</b> campo que armazena o email da pessoa.<br>

<b>Pessoa_Juridica:</b> tabela que armazena as informações somente de pessoas jurídicas.<br>
<b>cnpj:</b> campo que armazena o cnpj da pessoa jurídica.<br>

<b>Pessoa_Fisica:</b> tabela que armazena as informações somente de pessoas físicas.<br>
<b>cpf:</b> campo que armazena o cpf da pessoa física.<br>

<b>Funcionario:</b> tabela que armazena as informações dos funcionários de cada empresa.<br>
<b>matricula:</b> campo que armazena o número da matrícula do funcionário.<br>
<b>dataAdmissao:</b> campo que armazena a data que o funcionário foi contratado.<br>
<b>dataDemissao:</b> campo que armazena a data que o funcionário foi demitido.<br>

<b>Cargo:</b> tabela que armazena o cargo que um funcionários pode exercer.<br>
<b>id:</b> campo que identifica o cargo do funcionário.<br>
<b>nome:</b> campo que armazena o nome do cargo do funcionário.<br>

<b>Reserva:</b> tabela que armazena as reservas realizadas no sistema.<br>
<b>id:</b> campo que identifica a reserva cadastrada;<br>
<b>horaReserva:</b> campo que identifica o horário da reserva cadastrada;<br>
<b>dataReserva:</b> campo que identifica a data da reserva cadastrada;<br>
<b>horaSaida:</b> campo que identifica o horário que o veículo saiu do estacionamento.<br>

<b>Estacionamento:</b> tabela que armazena as informações do estacionamento.<br>
<b>id:</b> campo que identifica o estacionamento;<br>
<b>nome:</b> campo que armazena o nome do estacionamento (para visualização no aplicativo;<br>
<b>qntVagas:</b> campo que identifica a quantidade de vagas disponíveis no momento;<br>
<b>valorHora:</b> campo que armazena o valor/hora do estacionamento;<br>
<b>latitude:</b> campo que armazena a latitude do estacionamento;<br>
<b>longitude:</b> campo que armazena a longitude do estacionamento.<br>

<b>Vaga:</b> tabela que armazena informações da vaga de um estacionamento.<br>
<b>id:</b> campo que identifica a vaga em questão;<br>
<b>andar:</b> campo que identifica o andar da vaga;<br>
<b>numero:</b> campo que armazena o número da vaga;<br>
<b>latitude:</b> campo que armazena a latitude da vaga;<br>
<b>longitude:</b> campo que armazena a longitude da vaga.<br>

<b>Veículo:</b> tabela que armazena as informações do veículo.<br>
<b>modelo:</b> campo que identifica o modelo do veículo;<br>
<b>marca:</b> campo que identifica a marca do veículo;<br>
<b>ano:</b> campo que identifica o ano do veículo;<br>
<b>placa:</b> campo que identifica a placa do veículo;<br>

<b>Motorista:</b> tabela que armazena as informações dos motoristas.<br>
<b>creditos:</b> campo que armazena os créditos do motorista;<br>
<b>cnh:</b> campo que armazena o número da CNH do motorista.<br>
<b>Pagamento_Estacionamento:</b> tabela que armazena as informações dos pagamentos efetuados pelos motoristas.<br>
<b>id:</b> campo que identifica o pagamento realizado pelo motorista;<br>
<b>valor:</b> campo que armazena o valor do pagamento;<br>
<b>data:</b> campo que armazena a data do pagamento .<br>

<b>Recarga:</b> tabela que armazena as recargas efetuadas pelos motoristas.<br>
<b>id:</b> campo que identifica a recarga realizada;<br>
<b>valor:</b> campo que armazena o valor da recarga realizada;<br>

<b>Forma_Pagamento:</b> tabela que armazena as informações em comum das formas de pagamento disponíveis para os motoristas.<br>
<b>id:</b> campo que identifica a forma de pagamento;<br>

<b>Cartao:</b> tabela que armazena as informações dos cartões dos clientes.<br>
<b>numero:</b> campo que armazena o número do cartão do cliente;<br>
<b>bandeira:</b> campo que armazena a bandeira do cartão;<br>
<b>numParcelas:</b> campo que armazena o número de parcelas escolhido pelo cliente na recarga;<br>

<b>Tipo_Cartao:</b> tabela que armazena os tipos de cartões.<br>
<b>id:</b> campo que identifica o tipo do cartão armazenada;<br>
<b>descricao:</b> campo que descreve o tipo do cartão (crédito ou débito);<br>

<b>Paypal:</b> tabela que armazena a identificação da conta Paypal cadastrada pelo motorista.<br>
<b>conta:</b> campo que armazena a conta Paypal do motorista;<br>

<b>Endereco:</b> tabela que armazena os endereços dos estacionamentos cadastrados.<br>
<b>id:</b> campo que identifica um endereço;<br>
<b>cep:</b> campo que armazena o cep do estacionamento cadastrado;<br>
<b>logradouro:</b> campo que armazena o logradouro (rua) do estacionamento cadastrado;<br>
<b>complemento:</b> campo que armazena o complemento do endereço;<br>

<b>Bairro:</b> tabela que armazena todos os bairros dos estacionamentos cadastrados.
<b>id:</b> campo que identifica o bairro cadastrado;<br>
<b>nome:</b> campo que armazena o nome do bairro cadastrado.<br>

<b>Cidade:</b> tabela que armazena todas as cidades dos estacionamentos cadastrados.
<b>id:</b> campo que identifica a cidade cadastrada;<br>
<b>nome:</b> campo que armazena o nome da cidade cadastrada.<br>

<b>Estado:</b> tabela que armazena todos os estados dos estacionamentos cadastrados.
<b>id:</b> campo que identifica o estado cadastrado;<br>
<b>nome:</b> campo que armazena o nome do estado cadastrado.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)
        
![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/diagrama%20e%20modelos/modLogico_4.png?raw=truee "Modelo Lógico")

### 7	MODELO FÍSICO<br>

![Modelo Fisico](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/modFisico.txt?raw=truee)
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físic
        b) formato .SQL
![SQL 8.1](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/8.1.sql?raw=truee)
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
![SQL 8.2](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/8.2.sql?raw=truee)
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
        
![SQL 8.3](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/8.3.sql?raw=truee)
>## Marco de Entrega 03 em: (14/05/2018)<br>
     
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
   ![SQL 9.1](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/9.1.sql?raw=truee "Arquivo SQL da seção 9.1")
     
    1 - Tabela Pessoa:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaPessoa.PNG)
   
    2 - Tabela Pessoa Fisica:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaPessoaFisica.PNG)
   
    3 - Tabela Pessoa Juridica:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/tabelaPessoaJuridica.PNG)
   
    4 - Tabela Funcionario:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/tabelaFuncionario.PNG)
   
    5 - Tabela Motorista:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/tabelaMotorista.PNG)
   
    6 - Tabela Cargo:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaCargo.PNG)
   
    7 - Tabela Veiculo:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaVeiculo.PNG)
   
    8 - Tabela Estacionamento:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/tabelaEstacionamento.PNG)
   
    9 - Tabela Endereço:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaEndereco.PNG)
   
    10 - Tabela Estado:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaEstado.PNG)
   
    11 - Tabela Cidade:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaCidade.PNG)
   
    12 - Tabela Bairro:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaBairro.PNG)
   
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
[SQL 9.2](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/9_2.sql "Arquivo SQL da seção 9.2")

     1 -
     SELECT id, numero, andar, status, fk_estacionamento_id FROM vaga WHERE status = 'ocupada': 
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print-Tela%209.2%20-%20ATT%2002-07/9_2_1.png?raw=true)
   
     2 -
     SELECT id, nome AS Estacionamento, valorhora FROM estacionamento WHERE CAST(valorhora AS numeric) <= 10;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print-Tela%209.2%20-%20ATT%2002-07/9_2_2.png?raw=true)
   
     3 -
     SELECT nome AS Cidade from cidade WHERE fk_estado_id = 1;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print-Tela%209.2%20-%20ATT%2002-07/9_2_3.png?raw=true)
   
     4 -
     SELECT * FROM funcionario WHERE fk_cargo_id = 1;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print-Tela%209.2%20-%20ATT%2002-07/9_2_4.png?raw=true)
   
     5 -
     SELECT * FROM reserva WHERE datareserva = '2018-04-22';
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print-Tela%209.2%20-%20ATT%2002-07/9_2_5.png?raw=true)
   
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)<br>
[SQL 9.3](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/9.3.sql "Arquivo SQL da seção 9.3")

    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e NOT:
    1 -
    SELECT * FROM veiculo WHERE ano>2000 and ano<2010;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.3/9_3_a_1.PNG?raw=true "9_3_a_1.PNG")
   
    2 -
    SELECT * FROM bairro where NOT (fk_cidade_id=1 OR fk_cidade_id=2);
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.3/9_3_a_2.PNG?raw=true "9_3_a_2.PNG")
   
    3 -
    SELECT * FROM bairro WHERE nome LIKE 'S%' OR nome LIKE 'C%';
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.3/9_3_a_3.PNG?raw=true "9_3_a_3.PNG")
   
    4 - 
    SELECT * FROM reserva WHERE datareserva BETWEEN '2018-04-06' and '2018-04-21';
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.3/9_3_a_4.PNG?raw=true "9_3_a_4.PNG")

    5 - 
    SELECT * FROM funcionario WHERE datademissao BETWEEN dataadmissao AND CURRENT_DATE;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.3/9_3_a_5.PNG?raw=true "9_3_a_5.PNG")

    b) Criar no mínimo 3 consultas com operadores aritméticos:
    1 -
    SELECT p.id, p.nome "Motorista", r.horareserva, r.horasaida, r.horasaida - r.horareserva "Tempo de permanência" FROM reserva r
    JOIN motorista m ON r.fk_motorista_fk_pessoa_fisica_fk_pessoa_id = m.fk_pessoa_fisica_fk_pessoa_id
    JOIN pessoa p ON m.fk_pessoa_fisica_fk_pessoa_id = p.id;
   ![select 9.3.b.1](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.3/9_3_b_1.PNG?raw=true "9_3_b_1.PNG")
    
    2 -
    SELECT f.matricula, dataadmissao "Data Adminissão", datademissao "Data Demissão", datademissao - dataadmissao "Duração do emprego"
    FROM funcionario f
    WHERE f.datademissao IS NOT NULL;
   ![select 9.3.b.2](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.3/9_3_b_2.PNG?raw=true "9_3_b_2.PNG")
    
    3 -
    SELECT nome , valorhora, qntvagas, valorhora*qntvagas AS "Total bruto com todas as vagas em uso"  FROM estacionamento;
   ![select 9.3.b.3](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.3/9_3_b_3.PNG?raw=true "9_3_b_3.PNG")
    
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas:
    1 -
    SELECT p.nome AS "Pessoas Físicas" FROM pessoa p
    JOIN pessoa_fisica pf ON p.id = pf.fk_pessoa_id
    GROUP BY p.nome;
   ![select 9.3.c.1](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.3/9_3_c_1.PNG?raw=true "9_3_c_1.PNG")
    
    2 -
    SELECT e.nome AS "Estacionamento", COUNT(v) AS "Total_Vagas" FROM estacionamento AS e
    INNER JOIN vaga AS v ON e.id = v.fk_estacionamento_id
    GROUP BY e.nome;
   ![select 9.3.c.2](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.3/9_3_c_2.PNG?raw=true "9_3_c_2.PNG")
    
    3 -
    SELECT COUNT(e) AS "Total Estacionamentos", SUM(qntvagas) AS "Total de Vagas" FROM estacionamento e;
   ![select 9.3.c.3](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.3/9_3_c_3.PNG?raw=true "9_3_c_3.PNG")
    
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a)
    1 -
    SELECT * FROM cidade as c WHERE c.nome LIKE 'V%';
  ![select 9.4.a.1](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/9.4_a_1.PNG)
  
    2 -
    SELECT * FROM veiculo WHERE marca ILIKE 'F%';
  ![select 9.4.a.2](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/9.4_a_2.PNG)  
    
    3 -
    SELECT logradouro FROM endereco as ende WHERE ende.logradouro ILIKE 'Rua%';
  ![select 9.4.a.3](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/9.4_a_3.PNG)
    
    4 -
    SELECT logradouro FROM endereco as ende WHERE ende.logradouro ILIKE 'Travessa%';
  ![select 9.4.a.4](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/4.PNG)
  
    5 - 
    SELECT nome FROM estacionamento WHERE longitude LIKE '46.0%';
  ![select 9.4.a.5](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/5.PNG)
  
    b)  
    Obs: current_date = 11/06/2018
    1 - Função SELECT current_date:  SELECT current_date - ('2009-08-23') AS "diasEmpregado";
  ![select 9.4.b.1](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/6.PNG)
  
    2 - Função age: SELECT age(current_date,'2009-08-23');
  ![select 9.4.b.2](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/7.PNG)
  
    3 - Função extract e date_part: 
    SELECT datademissao,
    EXTRACT(year from datademissao) 
    FROM funcionario;

    SELECT datademissao,
    date_part('year', datademissao)
    FROM funcionario;

  ![select 9.4.b.3](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/8.PNG)

>## Marco de Entrega 04 em: (04/06/2017)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

    1-
    UPDATE pessoa SET senha = 'novaSenha' WHERE id = 4;
   ![select 9.5.1.a](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/9.5/antes-1_9.5.PNG)
    
   ![select 9.5.1.d](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/9.5/despois-1_9.5.PNG)
    
    2 -
    UPDATE funcionario SET datademissao = '2018-07-02' WHERE matricula = '222222';
   ![select 9.5.2.a](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/9.5/antes-2_9.5.PNG)
   ![select 9.5.2.d](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/9.5/depois-2_9.5.PNG)
    
    3 -
    UPDATE estacionamento SET valorhora = 12.0 WHERE id = 2;
   ![select 9.5.3.a](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/9.5/antes-3_9.5.PNG)
   ![select 9.5.3.d](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/9.5/despois-3_9.5.PNG)

    4 -
    DELETE FROM funcionario WHERE matricula = '222222';
   ![select 9.5.4.a](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/9.5/antes-2_9.5.PNG)
   ![select 9.5.4.d](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/9.5/depois-2Delete_9.5.PNG)
   
    5 -
    DELETE FROM reserva WHERE id = 2;
   ![select 9.5.5.a](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/9.5/antes_4d_9.5.PNG)
   ![select 9.5.5.d](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/9.5/depois_4d_9.5.PNG)
   
    6 -
    DELETE FROM veiculo_motorista WHERE fk_veiculo_id = 17;
   ![select 9.5.6.a](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/9.5/antes_5d_9.5.PNG)
   ![select 9.5.6.d](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/9.5/depois_5d_9.5.PNG)
   

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado:
    1 -
    SELECT ES.nome, PJ.cnpj "CNPJ da empresa", COUNT(V)
    FROM reserva RS
    JOIN motorista M ON RS.fk_motorista_fk_pessoa_fisica_fk_pessoa_id = M.fk_pessoa_fisica_fk_pessoa_id
    JOIN pessoa_fisica PF ON M.fk_pessoa_fisica_fk_pessoa_id = PF.fk_pessoa_id
    JOIN pessoa P ON PF.fk_pessoa_id = P.id
    JOIN vaga V ON V.id = RS.fk_vaga_id
    JOIN estacionamento ES ON ES.id = V.fk_estacionamento_id
    JOIN pessoa_juridica PJ ON PJ.fk_pessoa_id = ES.fk_pessoa_juridica_fk_pessoa_id
    JOIN endereco EN ON EN.id = ES.fk_endereco_id
    WHERE PJ.fk_pessoa_id in (SELECT pessoa.id FROM pessoa)
    GROUP BY ES.nome, PJ.cnpj
    ORDER BY ES.nome;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.6/9_6_1.png?raw=true)
        
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho:
    1 -
    SELECT es.nome "Estacionamento", b.nome "Bairro", est.nome "Estado", COUNT(v) "Total Vagas" FROM estacionamento es
    JOIN endereco en ON en.id = es.fk_endereco_id
    JOIN bairro b ON b.id = en.fk_bairro_id
    JOIN cidade c ON c.id = b.fk_cidade_id
    JOIN estado est ON est.id = c.fk_estado_id
    JOIN vaga v ON v.fk_estacionamento_id = es.id
    GROUP BY es.nome,b.nome, est.nome
    ORDER BY es.nome, "Total Vagas" DESC;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.6/9_6_2.png?raw=true)
   
    2 -
    SELECT DISTINCT P.nome, V.modelo, V.placa from veiculo_motorista AS VM
    JOIN veiculo AS V ON V.id = VM.fk_veiculo_id
    JOIN motorista AS M ON M.fk_pessoa_fisica_fk_pessoa_id = VM.fk_motorista_fk_pessoa_fisica_fk_pessoa_id
    JOIN pessoa AS P ON P.id = M.fk_pessoa_fisica_fk_pessoa_id
    Order by P.nome, V.modelo;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.6/9_6_3.png?raw=true)
   
    3 -
    SELECT DISTINCT P.nome "Motorista", VE.modelo "Modelo carro", R.datareserva "Data da Reserva"
    FROM reserva R
    JOIN veiculo AS VE ON VE.id = R.fk_veiculo_id
    JOIN motorista AS M ON M.fk_pessoa_fisica_fk_pessoa_id = R.fk_motorista_fk_pessoa_fisica_fk_pessoa_id
    JOIN pessoa AS P ON P.id = M.fk_pessoa_fisica_fk_pessoa_id
    Order by R.datareserva DESC;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.6/9_6_4.png?raw=true)
    
    4 -
    SELECT ES.nome "Estacionamento", V.numero "Num da vaga", V.andar"Andar", COUNT(R) "Vezes de utilização"
    FROM estacionamento ES
    JOIN vaga V ON V.fk_estacionamento_id = ES.id
    JOIN reserva R ON R.fk_vaga_id = V.id
    GROUP BY ES.nome, V.numero, V.andar
    ORDER BY ES.nome;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.6/9_6_5.png?raw=true)
    
    5 -
    SELECT P.nome "Motorista", R.datareserva "Data da Reserva", R.horasaida - R.horareserva "Tempo de permanência", E.nome "Estacionamento"
    FROM reserva R
    JOIN motorista M ON R.fk_motorista_fk_pessoa_fisica_fk_pessoa_id = m.fk_pessoa_fisica_fk_pessoa_id
    JOIN pessoa P ON M.fk_pessoa_fisica_fk_pessoa_id = P.id
    JOIN vaga V ON V.id = R.fk_vaga_id
    JOIN estacionamento E ON E.id = V.fk_estacionamento_id
    ORDER BY R.datareserva DESC;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.6/9_6_6.png?raw=true)
        
        
        
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
[SQL 9.7](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/9_7.sql "Arquivo SQL da seção 9.7")

    1 - 
    SELECT F.fk_cargo_id ,cargo.nome, count(fk_cargo_id) FROM funcionario F
    JOIN cargo ON cargo.id = F.fk_cargo_id
    GROUP BY F.fk_cargo_id, cargo.nome;
   ![select 9.7.1](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.7/9_7_1.png?raw=true "9_7_1.png")
    
    2 - 
    SELECT F.datademissao, count(*) FROM funcionario F
    GROUP BY F.datademissao;
   ![select 9.7.2](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.7/9_7_2.png?raw=true "9_7_2.png")
    
    3 - 
    SELECT F.fk_cargo_id , C.nome, count(fk_cargo_id) FROM funcionario F
    JOIN cargo C ON C.id = F.fk_cargo_id
    GROUP BY F.fk_cargo_id, C.nome;
   ![select 9.7.3](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.7/9_7_3.png?raw=true "9_7_3.png")

    4 - 
    SELECT P.nome, V.modelo, R.datareserva FROM veiculo_motorista VM
    JOIN motorista M ON M.fk_pessoa_fisica_fk_pessoa_id = VM.fk_motorista_fk_pessoa_fisica_fk_pessoa_id
    JOIN veiculo V ON V.id = VM.fk_veiculo_id
    JOIN reserva R ON R.fk_motorista_fk_pessoa_fisica_fk_pessoa_id = M.fk_pessoa_fisica_fk_pessoa_id
    JOIN pessoa P ON P.id = M.fk_pessoa_fisica_fk_pessoa_id
    GROUP BY P.nome, V.modelo, R.datareserva
    ORDER BY P.nome;
   ![select 9.7.4](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.7/9_7_4.png?raw=true "9_7_4.png")
   
    5 - 
    SELECT P.nome, R.horasaida - R.horareserva AS "tempo de permanência" FROM reserva R
    JOIN vaga V ON V.id = R.fk_vaga_id
    JOIN pessoa P ON P.id = R.fk_motorista_fk_pessoa_fisica_fk_pessoa_id
    GROUP BY P.nome, R.horasaida, R.horareserva
    HAVING R.horasaida - R.horareserva > '1:00:00';
   ![select 9.7.5](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.7/9_7_5.png?raw=true "9_7_5.png")

    6 - 
    SELECT ES.nome, COUNT(V.id) "Qntd vagas livres" FROM bairro B
    JOIN endereco EN ON EN.fk_bairro_id = B.id
    JOIN estacionamento ES ON ES.fk_endereco_id = EN.id
    JOIN cidade C ON C.id = B.fk_cidade_id
    JOIN vaga V ON V.fk_estacionamento_id = ES.id
    WHERE V.status = 'livre'
    GROUP BY ES.nome
    ORDER BY COUNT(V.id) DESC;
   ![select 9.7.6](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.7/9_7_6.png?raw=true "9_7_6.png")

#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
[SQL 9.8](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/9.8.sql "Arquivo SQL da seção 9.8")
    
    1 - 
    SELECT pe.nome, pe.email FROM
    pessoa as pe 
    RIGHT JOIN pessoa_fisica as pef 
    ON pe.id = pef.fk_pessoa_id;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20Telas%20-%209.8/1.PNG?raw=true)
   
    2 - 
    SELECT pef.cpf, moto.creditos FROM
    pessoa_fisica as pef 
    RIGHT JOIN motorista as moto ON pef.fk_pessoa_id = moto.fk_pessoa_fisica_fk_pessoa_id
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20Telas%20-%209.8/2.PNG?raw=true)
        
    3 - 
    SELECT pej.cnpj, est.nome FROM
    pessoa_juridica as pej
    LEFT JOIN estacionamento as est ON pej.fk_pessoa_id = est.fk_pessoa_juridica_fk_pessoa_id
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20Telas%20-%209.8/3.PNG?raw=true)
   
    4 - 
    SELECT pe.nome, pej.cnpj, pe.email FROM
    pessoa_juridica as pej
    LEFT JOIN pessoa as pe 
    ON pej.fk_pessoa_id = pe.id
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20Telas%20-%209.8/4.PNG?raw=true)
   
    5 - 
    
    6 - 
   
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
    CREATE VIEW vwVagasLivre AS 
    SELECT V.numero "Número da Vaga", EST.nome "Nome do Estacionamento"
    FROM bairro B
    JOIN endereco EN ON EN.fk_bairro_id = b.id
    JOIN estacionamento EST ON EST.fk_endereco_id = EN.id
    JOIN cidade cid ON CID.id = B.fk_cidade_id
    JOIN vaga V ON V.fk_estacionamento_id = EST.id
    WHERE V.status = 'livre'
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%209.9/Print_9_9_1.PNG?raw=true)
   
    CREATE VIEW vwQntVagasLivre AS
    SELECT ES.nome, COUNT(V.id) "Qntd vagas livres" FROM bairro B
    JOIN endereco EN ON EN.fk_bairro_id = B.id
    JOIN estacionamento ES ON ES.fk_endereco_id = EN.id
    JOIN cidade C ON C.id = B.fk_cidade_id
    JOIN vaga V ON V.fk_estacionamento_id = ES.id
    WHERE V.status = 'livre'
    GROUP BY ES.nome
    ORDER BY COUNT(V.id) DESC
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%209.9/Print_9_9_2.PNG?raw=true)
   
    SELECT count("Qntd vagas livres") "Total de vagas livres"
    FROM vwQntVagasLivre
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%209.9/Print_9_9_3.PNG?raw=true)
   
    SELECT count(distinct "Nome do Estacionamento") "Estacionamentos com vagas disponíveis"
    FROM vwVagasLivre
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%209.9/Print_9_9_4.PNG?raw=true)
   
    create view vwFuncionariosAtivos as
    select func.matricula "Matrícula", pes.nome "Nome do funcionário", func.dataadmissao "Admissão"
    from pessoa pes
    join funcionario func on func.fk_pessoa_fisica_fk_pessoa_id = pes.id
    where datademissao is not null;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%209.9/Print_9_9_5.PNG?raw=true)
    
    create view vwEstacionamentosMaisBaratos as
    select est.nome "Nome do estacionamento", pes.nome "Empresa", valorhora "Valor por hora", qntvagas "Quantidade de vagas" 
    from estacionamento est
    join pessoa_juridica pj on est.fk_pessoa_juridica_fk_pessoa_id = pj.id
    join pessoa pes on pes.id = est.fk_pessoa_juridica_fk_pessoa_id
    order by valorhora desc
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%209.9/Print_9_9_6.PNG?raw=true)

#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
    SELECT est.nome "Estabelecimento", cid.nome "Cidade", b.nome "Bairro" 
    FROM bairro b
    JOIN endereco e ON e.fk_bairro_id = b.id
    JOIN estacionamento est ON est.fk_endereco_id = e.id
    JOIN cidade cid ON b.fk_cidade_id = cid.id
    WHERE cid.nome IN('Vila Velha', 'Vitória', 'Serra')
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%209.10/Print9_10_1.PNG?raw=true)
   
    SELECT pes.nome "Cliente", vei.modelo "Carro", res.datareserva "Data da reserva"
    FROM veiculo vei
    JOIN veiculo_motorista vm ON vm.fk_veiculo_id = vei.id
    JOIN motorista mot ON mot.fk_pessoa_fisica_fk_pessoa_id = vm.fk_motorista_fk_pessoa_fisica_fk_pessoa_id
    JOIN pessoa pes ON pes.id = mot.fk_pessoa_fisica_fk_pessoa_id
    JOIN reserva res ON res.fk_veiculo_id = vei.id
    WHERE res.datareserva IN('2018-04-22')
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%209.10/Print9_10_2.PNG?raw=true)
   
    SELECT est.nome "Nome do estacionamento", v.numero "Número da vaga"
    FROM bairro b
    JOIN endereco e ON e.fk_bairro_id = b.id
    JOIN estacionamento est ON est.fk_endereco_id = e.id
    JOIN cidade cid ON cid.id = b.fk_cidade_id
    JOIN vaga v ON v.fk_estacionamento_id = est.id
    WHERE v.status IN('livre') AND cid.nome IN('Vila Velha', 'Vitória', 'Serra')
    ORDER BY est.nome, v.numero
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%209.10/Print9_10_3.PNG?raw=true)

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres
![BACKUP](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/estaciona.backup)
    
Verificado pelo Grupo [EasyMarket](https://github.com/rfidmarket/trab01): Antonio, Jennifer, Joel e Larissa.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br><br>
![Tutorial Restauração BACKUP](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/Tutorial%20-%20Restauracao%20BACKUP.pdf)
  
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
<b>Escopo do projeto:</b>
- O grupo teve dificuldades em finalizar todo o projeto devido a quantidade de tabelas. Devido ao tempo e experiência dos alunos envolvidos, o escopo foi considerado grande. Logo as tabelas FORMA_PAGAMENTO, CARTAO, PAYPAL e TIPO_CARTAO não foram implementadas devidamente.

<b>Alterações no projeto:</b>
- Alterações que eram feitas no documento de requisitos (disciplina de Análise de Sistemas) e algumas alterações que eram necessárias para o desenvolvimento (disciplina de Programação Orientada a Objetos 1) resultaram em alterações sistemáticas nos modelos conceitual, lógico e físico. O grupo teve dificuldades em registrar essas mudanças.

- Atualmente, por mais que tenhamos auxílio de várias ferramentas para a comunicação, os integrantes do grupo tiveram dificuldade em manter o grupo atualizado com as decisões e alterações feitas no projeto.

<b>Consultas SQL:</b>
- Muitas consultas (SELECTs) foram pedidas ao longo do documento no GitHub. Num certo ponto do trabalho o grupo teve dificuldades em acrescentar consultas diferenciadas.

<b>Outras disciplinas:</b>
- Foi difícil conciliar todas as entregas de trabalhos e provas todas as disciplinas. Isso afetou no tempo para um maior aprendizado de cada uma delas, incluindo BD1.

<b>Extra classe:</b>
- Isso ocorre também em outras disciplinas com vários alunos: os compromissos com estágio afetam no tempo e disposição de integrantes do grupo, sobrecarregando os demais integrantes, que já estão sobrecarregados devido às outras disciplinas.

>## Marco de Entrega Final em: (25/06/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


