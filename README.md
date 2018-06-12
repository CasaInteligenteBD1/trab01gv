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


### 2. INTRODUÇÃO E MOTIVAÇAO<br>

O projeto estacIonA vem com a ideia de facilitar a vida das pessoas que precisam estacionar em grandes centros urbanos. Por meio de um sistema, será possível pesquisar e reservar vagas de estacionamento disponíveis, na visão do motorista; efetuar cadastros e visualizar relatórios, na visão empresarial.

A engrenagem que nos move é a grande necessidade dos motoristas em estacionar seus carros nos grandes centros, somada a grande concorrência das vagas, que por sua vez geram uma perda de tempo e estresse aos motoristas. Essa situação nos dá uma oportunidade de negócio junto aos estacionamentos privativos, na qual um cliente poderá pagar pela reserva de uma vaga, garantindo-a e evitando possíveis transtornos para se achar uma vaga posteriormente, com a comodidade de realizar essa tarefa pelo seu smartphone.
 

### 3.MINI-MUNDO Novo<br>

O estacIonA é um sistema desenvolvido para atender empresas de estacionamento privadas, localizadas em grandes centros urbanos. O sistema é feito para funcionar em conjunto com sensores, que possibilitarão identificar as placas dos veículos e ajudar na atualização da visualização das vagas livres/ocupadas no sistema. Sua principal função é permitir que os motoristas reservem vagas de estacionamento para seus veículos de maneira remota nesses estacionamentos, que devem estar cadastrados no estacIonA.

Do motorista, será armazenado o número da sua CNH e seu CPF. O motorista poderá reservar vagas, desde que tenha créditos em sua carteira digital (também responsável por armazenar informações de recargas). Existirão três maneiras de um motorista acrescentar créditos a sua carteira, payPal, cartão de crédito ou débito. Para cada uma dessas formas de pagamentos serão armazenados, respectivamente, o nome da conta payPal, e o número do cartão para as duas últimas.
 
Um estacionamento possui um endereço, e nele trabalha dois tipos de funcionários, o administrador e o guarda. E quanto às informações específicas de cada estacionamento, serão armazenadas a quantidade de vagas, o valor da hora de utilização de uma vaga e sua localização para o GPS (latitude e longitude).
 
Sobre a vaga, é importante saber o status dela, ou seja,  se está reservada ou não. Também é importante saber qual estacionamento ela pertence, o número do andar, o seu número identificador, e sua localização para o GPS (latitude e longitude).

Para realizar uma reserva, o motorista ter pelo menos um veículo cadastrado, então ele escolhe pelo GPS um estacionamento que deseja utilizar, visualiza as vagas livres e ocupadas deste estacionamento, escolhe uma das vagas livres, informa qual será seu horário de entrada na vaga e confirma o pagamento, para isso o motorista já deve ter créditos suficientes em sua carteira digital no aplicativo. Ao sair da vaga o sistema calcula o valor total que o motorista terá que pagar, e então o sistema descontará dos seus créditos. O motorista com o aplicativo pode, de qualquer lugar, efetuar a reserva de uma vaga de estacionamento que estiver livre (que não está em uso ou não foi reservada).

Um motorista poderá financiar seus créditos em sua carteira digital no aplicativo utilizando cartão de de crédito ou débito ou payPal.

A reserva garante que um motorista garanta sua utilização de uma determinada vaga por uma hora, a contar a partir da hora que ele informou ao solicitar a reserva. O motorista, antes de se retirar do estacionamento, deverá pagar pelas horas excedentes à primeira de utilização da vaga.

Um estacionamento poderá ser gerenciado por um ou mais funcionários administradores, na qual eles poderão, para os estacionamentos que cada um deles gerencia, cadastrar, editar e excluir vagas e cadastrar e editar estacionamentos. saber quais vagas estão ocupadas ou livres de forma visual. O guarda poderá apenas visualizar as informações das vagas(local, número, etc), e se a vaga está ocupada ou não.

<br>

<b>Link do protótipo:</b> ![Protótipo EstacIonA](https://github.com/CasaInteligenteBD1/trab01gv/raw/master/arquivos/prototipoTelasEstaciona.pdf)<br>

#### 4.1 TABELA DE DADOS DO SISTEMA:
![Tabela de dados v0.1](https://github.com/GrupoDaVaga/trab01/blob/master/arquivos/4_1_tabela_de_dados_estacIonA.xlsx?raw=true)<br>
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
       
![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/modConceitual_2.png?raw=true "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
        
![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Diagrama_Classe_Estaciona_modificado.png?raw=true "Diagrama de Classes")
    
#### 5.1 Validação do Modelo Conceitual
  <b>Grupo RFID/EasyMarket:</b> Antônio Carlos Durães, Jennifer Gonçalves, Joel Will e Larissa Motta<br>
  <b>Grupo da Vaga (nossos clientes):</b> Leonardo Arpini, Luciano Ananias, David Moura e Thiago Alves
               

#### 5.2 DECISÕES DE PROJETO
        
<b>Pessoa:</b> decidimos utilizar uma tabela “PESSOA” para armazenar as informações de todo cliente, seja ele uma pessoa física ou uma pessoa jurídica.<br>

<b>Contato:</b> decidimos utilizar uma tabela “CONTATO”, para armazenar todos as formas de contato disponíveis para um cliente (site pessoal, telefone residencial, celular, etc.)<br>

<b>Endereço:</b> decompomos o “ENDERECO” em  campos "estado", "cidade", "bairro", para seguir as regras de normalização.<br>

<b>Pagamento:</b> dividimos o pagamento em dois momentos diferentes. Um é realizado logo após a reserva da vaga (“PAGAMENTO_RESERVA”) e o outro é realizado após sair do estacionamento, caso ele permaneça mais tempo do que ele agendou (“PAGAMENTO_ESTACIONAMENTO”). Por exemplo, um cliente reservou uma vaga de 10:00 às 11:00, porém ele saiu somente às 14:00. Logo, para evitarmos conflito, o pagamento será dividido em duas etapas.<br>

<b>Funcionário:</b> No nosso sistema, existem dois cargos de funcionários: o de administrador do estacionamento da empresa, que possui poder de editar/cadastrar/excluir um determinado estacionamento e o de guarda, que só visualiza as vagas disponíveis. Portanto, utilizamos uma tabela “FUNCIONARIO”, com o campo “cargo”.<br>

Foi determinado, junto ao cliente, que qualquer motorista, para efetuar uma reserva de vaga, deve pagar, no momento que a faz, o valor de uma hora de utilização do estacionamento. O que garante a utilização da vaga também por uma hora para o motorista.<br>

>## Marco de Entrega 02 em: (23/04/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    
<b>Pessoa:</b> tabela que armazena as informações do cliente.<br>
<b>id:</b> campo que identifica a pessoa;<br>
<b>nome:</b> campo que armazena o nome completo da pessoa;<br>
<b>senha:</b> campo que armazena a senha (em md5) da pessoa.<br>

<b>Pessoa_Juridica:</b> tabela que armazena as informações somente de pessoas jurídicas.<br>
<b>cnpj:</b> campo que armazena o cnpj da pessoa jurídica.<br>

<b>Pessoa_Fisica:</b> tabela que armazena as informações somente de pessoas físicas.<br>
<b>cpf:</b> campo que armazena o cpf da pessoa física.<br>

<b>Funcionario:</b> tabela que armazena as informações dos funcionários de cada empresa.<br>
<b>matricula:</b> campo que identifica o número da matrícula do funcionário.<br>
<b>dataAdmissao:</b> campo que armazena a data que o funcionário foi contratado.<br>
<b>dataDemissao:</b> campo que armazena a data que o funcionário foi demitido.<br>

<b>Reserva:</b> tabela que armazena as reservas realizadas no sistema.<br>
<b>id:</b> campo que identifica a reserva cadastrada;<br>
<b>horaReserva:</b> campo que identifica o horário da reserva cadastrada;<br>
<b>dataReserva:</b> campo que identifica a data da reserva cadastrada;<br>

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
<b>status:</b> campo que armazena o status da vaga (livre ou ocupada);<br>
<b>latitude:</b> campo que armazena a latitude da vaga;<br>
<b>longitude:</b> campo que armazena a longitude da vaga.<br>

<b>Veículo:</b> tabela que armazena as informações do veículo.<br>
<b>modelo:</b> campo que identifica o modelo do veículo;<br>
<b>marca:</b> campo que identifica a marca do veículo;<br>
<b>ano:</b> campo que identifica o ano do veículo;<br>
<b>placa:</b> campo que identifica a placa do veículo;<br>
<b>nome:</b> campo que identifica o nome do veículo;<br>

<b>Motorista:</b> tabela que armazena as informações dos motoristas.<br>
<b>creditos:</b> campo que armazena os créditos do motorista;<br>
<b>cnh:</b> campo que armazena o número da CNH do motorista.<br>

<b>Entrada_saida:</b> tabela que armazena os horários de entrada e saída dos veículos no estacionamento.<br>
<b>id:</b> campo que identifica os horários cadastrados;<br>
<b>horaChegada:</b> campo que identifica o horário de chegada do veículo;<br>
<b>horaSaida:</b> campo que identifica o horário de saída do veículo;<br>
<b>dataEntrada:</b> campo que identifica a data na chegada do veículo;<br>
<b>dataSaida:</b> campo que identifica a data na saída do veículo;<br>

<b>Endereco:</b> tabela que armazena os endereços dos estacionamentos cadastrados.<br>
<b>id:</b> campo que identifica de qual estacionamento o endereço se refere;<br>
<b>cep:</b> campo que armazena o cep do estacionamento cadastrado;<br>
<b>rua:</b> campo que armazena a rua do estacionamento cadastrado;<br>
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

<b>Contato:</b> tabela que armazena os contatos dos clientes cadastrados.<br>
<b>id:</b> campo que identifica o contato que foi armazenado;<br>
<b>telefone1:</b> campo que armazena o telefone principal de contato;<br>
<b>telefone2:</b> campo que armazena o telefone secundário de contato;<br>
<b>email:</b> campo que armazena o email da pessoa;<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)
        
![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/modLogico.png?raw=truee "Modelo Lógico")

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
     
      1) Tabela Pessoa:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaPessoa.PNG)
   
    2) Tabela Pessoa Fisica:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaPessoaFisica.PNG)
   
    3) Tabela Pessoa Juridica:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/tabelaPessoaJuridica.PNG)
   
    4) Tabela Funcionario:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/tabelaFuncionario.PNG)
   
    5) Tabela Motorista:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/tabelaMotorista.PNG)
   
    6) Tabela Cargo:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaCargo.PNG)
   
    7) Tabela Veiculo:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaVeiculo.PNG)
   
    8) Tabela Estacionamento:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/tabelaEstacionamento.PNG)
   
    9) Tabela Endereço:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaEndereco.PNG)
   
    10) Tabela Estado:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaEstado.PNG)
   
    11) Tabela Cidade:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaCidade.PNG)
   
    12) Tabela Bairro:
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.1/TabelaBairro.PNG)
   
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
![SQL 9.2](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/9.2.sql?raw=truee "Arquivo SQL da seção 9.2")

     1) SELECT id, numero, andar, status, fk_estacionamento_id FROM vaga WHERE status = 'ocupada': 
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.2/1_where_vaga.png?raw=true)
   
     2) SELECT id, nome AS Estacionamento, valorhora FROM estacionamento WHERE CAST(valorhora AS numeric) <= 10;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.2/2_where_estacionamento.png?raw=true)
   
     3) SELECT nome AS Cidade from cidade WHERE fk_estado_id = 1;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.2/3_where_cidade.png?raw=true)
   
     4) SELECT * FROM funcionario WHERE fk_cargo_id = 1;
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.2/4_where_funcionario.png?raw=true)
   
     5) SELECT * FROM reserva WHERE datareserva = '2018-04-22';
   ![Alt text](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Print%20tabelas%20-%209.2/5_where_reserva.png?raw=true)
   
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)<br>
![SQL 9.3](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/arquivos/9.3.sql "Arquivo SQL da seção 9.3")

    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e NOT:
    
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
    1) SELECT * FROM cidade as c WHERE c.nome LIKE 'V%';
  ![select 9.4.a.1](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/1.PNG)
  
    2) SELECT * FROM veiculo WHERE marca ILIKE 'F%';
  ![select 9.4.a.2](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/2.PNG)  
    
    3)SELECT logradouro FROM endereco as ende WHERE ende.logradouro ILIKE 'Rua%';
  ![select 9.4.a.3](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/3.PNG)
    
    4) SELECT logradouro FROM endereco as ende WHERE ende.logradouro ILIKE 'Travessa%';
  ![select 9.4.a.4](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/4.PNG)
  
    5) SELECT nome FROM estacionamento WHERE longitude LIKE '46.0%';
  ![select 9.4.a.5](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/5.PNG)
  
    b)
    1) Função SELECT current_date -  SELECT current_date - ('2009-08-23') AS "diasEmpregado";
  ![select 9.4.b.1](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/6.PNG)
  
    2) Função age - SELECT age(current_date,'2009-08-23');
  ![select 9.4.b.2](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/7.PNG)
  
    3) Função extract e date_part - 
    SELECT datademissao,
    EXTRACT(year from datademissao) 
    FROM funcionario;

    SELECT datademissao,
    date_part('year', datademissao)
    FROM funcionario;

  ![select 9.4.b.3](https://github.com/CasaInteligenteBD1/trab01gv/blob/master/images/Prints%20Tabelas%20-%209.4/8.PNG)

>## Marco de Entrega 04 em: (04/06/2017)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
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


