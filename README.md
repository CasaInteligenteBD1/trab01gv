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


### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados estac<b>I</b>on<b>A</b>
<br>e motivação da escolha realizada. <br>

> A empresa "OriginsIA Soluções Tecnologicas" visa colaborar com desenvolvimento de projetos para uma sociedade melhor. Sabendo-se dos desafios para se encontrar vagas em em grandes cidades e grandes centros, ficamos motivados com o desenvolvimento deste sistema "estacIonA". O Sistema "estacIonA" tem como objetivo trazer facilidade e agilizade daqueles que precisam estacionar seus carros em locais cuja as vagas são escassas. Para realizar suas operações adequadamente e empresa necessita que sistema que armazene informações relativas aos estacionamentos, além de também armazenar dados sobre as vagas e as informações dos usuarios. 

> O sistema irá utilizar sensores de presença para saber onde uma vaga está disponível e com a ajuda de câmeras verificará se o carro na vaga é a da pessoa que a reservou. Todo o sistema de reserva e pagamento será feito por um aplicativo que utilizando o sensor de gps mostrará um mapa em tempo real do local onde se encontra o carro e o guiará até a vaga correta. O banco de dados consistirá em dados do cliente como nome, email, cpf/cnpj, número da placa, número do cartão de crédito, além dos dados do estabelecimento e dos dados coletados pelos sensores. <br>
 

### 3.MINI-MUNDO Novo<br>

Descrever o mini-mundo! (Não deve ser maior do que 30 linhas) <br>
Entrevista com o usuário e identificação dos requisitos.<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.

> 
O Sistema proposto ao usuário apresenta as seguintes informações .Do cliente serão armazenados o nome,senha,e-mail,CPF,numero de telefone e placa do veiculo.Das formas de pagamentos serão armazenados numero de cartão de crédito, conta de PayPal e créditos depositados. O usuário com o aplicativo pode de qualquer lugar efetuar a reserva de um estacionamento caso ele já não tenha sido reservado por outro, caso não tenha sido reservado o mesmo poderá efetuar uma reserva com base nos seus dados já cadastrados, escolhendo assim seu método de pagamento mais apropriado e sendo informado do valor a ser pago por essa vaga.
O sistema proposto ao administrador apresenta as seguintes informações: Da empresa será armazenada o nome,e-mail, senha e CNPJ, Dos estacionamentos serão armazenados o Local e código da vaga, o administrador poderá adicionar o remover qualquer estacionamento e alterar o numero de vagas assim que desejar, podendo alterar também localidades e lugares pelo mapa.
<br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")

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
    
        
    
#### 5.1 Validação do Modelo Conceitual
    Grupo RFID/EasyMarket: Antônio, Jennifer, Joel, Larissa
    [Grupo02]: Solicitamos ao grupo da Casa Inteligente e ao Grupo da Vaga (nossos clientes). Estamos aguardando o retorno de um deles.
               

#### 5.2 DECISÕES DE PROJETO
        
<b>Pessoa:</b> decidimos utilizar uma tabela “PESSOA” para armazenar as informações de todo cliente, seja ele uma pessoa física ou uma pessoa jurídica.<br>

<b>Contato:</b> decidimos utilizar uma tabela “CONTATO”, para armazenar todos as formas de contato disponíveis para um cliente (site pessoal, telefone residencial, celular, etc.)<br>

<b>Endereço:</b> decompomos o “ENDERECO” em  campos "estado", "cidade", "bairro", para seguir as regras de normalização.<br>

<b>Pagamento:</b> dividimos o pagamento em dois momentos diferentes. Um é realizado logo após a reserva da vaga (“PAGAMENTO_RESERVA”) e o outro é realizado após sair do estacionamento, caso ele prmaneça mais tempo do que ele agendou (“PAGAMENTO_ESTACIONAMENTO”). Por exemplo, um cliente reservou uma vaga de 10:00 às 11:00, porém ele saiu somente às 14:00. Logo, para evitarmos conflito, o pagamento será dividido em duas etapas.<br>

<b>Funcionário:</b> No nosso sistema, existem dois cargos de funcionários: o de administrador do estacionamento da empresa, que possui poder de editar/cadastrar/excluir um determinado estacionamento e o de guarda, que só visualiza as vagas disponíveis. Portanto, utilizamos uma tabela “FUNCIONARIO”, com o campo “cargo”.<br>

Foi determinado, junto ao cliente, que qualquer motorista, para efetuar uma reserva de vaga, deve pagar, no momento que a faz, o valor de uma hora de utilização do estacionamento. O que garante a utilização da vaga também por uma hora para o motorista.<br>

>## Marco de Entrega 02 em: (23/04/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    

<b>Pessoa:</b> tabela que armazena as informações do cliente.<br>
<b>-id:</b> campo que identifica a pessoa;<br>
<b>-nome:</b> campo que armazena o nome completo da pessoa;<br>
<b>-email:</b> campo que armazena o email que será usado como login da pessoa;<br>
<b>-senha:</b> campo que armazena a senha (em md5) da pessoa.<br>

<b>Pessoa_Juridica:</b> tabela que armazena as informações somente de pessoas jurídicas.<br>
<b>-cnpj:</b> campo que armazena o cnpj da pessoa jurídica.<br>

<b>Pessoa_Fisica:</b> tabela que armazena as informações somente de pessoas físicas.<br>
<b>-cpf:</b> campo que armazena o cpf da pessoa física.<br>

<b>Funcionário:</b> tabela que armazena as informações dos funcionários de cada empresa.<br>
<b>-cargo:</b> campo que identifica o cargo do funcionário (administrador ou guarda)<br>

<b>Empresa:</b> tabela que armazena as informações das empresas cadastradas.<br>

<b>Estacionamento:</b> tabela que armazena as informações do estacionamento.<br>
<b>-idEstaciona:</b> campo que identifica o estacionamento;<br>
<b>-nomeEstaciona:</b> campo que armazena o nome do estacionamento (para visualização no aplicativo;<br>
<b>-qntVagas:</b> campo que identifica a quantidade de vagas disponíveis no momento;<br>
<b>-valorPorHora:</b> campo que armazena o valor/hora do estacionamento;<br>
<b>-latitudeEstaciona:</b> campo que armazena a latitude do estacionamento;<br>
<b>-longitudeEstaciona:</b> campo que armazena a longitude do estacionamento.<br>

<b>Vaga:</b> tabela que armazena informações da vaga de um estacionamento.<br>
<b>-id:</b> campo que identifica a vaga em questão;<br>
<b>-andar:</b> campo que identifica o andar da vaga;<br>
<b>-numeroVaga:</b> campo que armazena o número da vaga;<br>
<b>-latitudeVaga:</b> campo que armazena a latitude da vaga;<br>
<b>-longitudeVaga:</b> campo que armazena a longitude da vaga.<br>

<b>Veículo:</b> tabela que armazena as informações do veículo.<br>
<b>-idMarcaModelo:</b> campo que identifica o veículo;<br>
<b>-ano:</b> campo que identifica o ano do veículo;<br>
<b>-placa:</b> campo que identifica a placa do veículo;<br>

<b>Marca_Modelo:</b> tabela que armazena as marcas e os modelos dos veículos.
<b>-marca:</b> campo que armazena a marca do veículo;<br>
<b>-modelo:</b> campo que armazena o modelo do veículo;<br>
<b>-idMarcaModelo:</b> campo que identifica a marca e o modelo do veículo.<br>

<b>Motorista:</b> tabela que armazena as informações dos motoristas.<br>
<b>-cpf:</b> campo que armazena o cpf dos motoristas;<br>
<b>-creditos:</b> campo que armazena os créditos do motorista;<br>
<b>-cnh:</b> campo que armazena o número da CNH do motorista.<br>

<b>Sensor:</b> tabela que armazena as informações dos sensores.<br>
<b>-idSensor:</b> campo que identifica o sensor cadastrado;<br>
<b>-tipoSensor:</b> campo que armazena o tipo do sensor cadastrado;<br>
<b>-descricaoSensor:</b> campo que descreve o funcionamento do sensor cadastrado.<br>

<b>Endereco:</b> tabela que armazena os endereços dos estacionamentos cadastrados.<br>
<b>-idEstaciona:</b> campo que identifica de qual estacionamento o endereço se refere;<br>
<b>-cep:</b> campo que armazena o cep do estacionamento cadastrado;<br>
<b>-rua:</b> campo que armazena a rua do estacionamento cadastrado;<br>

<b>Bairro:</b> tabela que armazena todos os bairros dos estacionamentos cadastrados.
<b>-idBairro:</b> campo que identifica o bairro cadastrado;<br>
<b>-bairro:</b> campo que armazena o nome do bairro cadastrado.<br>

<b>Cidade:</b> tabela que armazena todas as cidades dos estacionamentos cadastrados.
<b>-idCidade:</b> campo que identifica a cidade cadastrada;<br>
<b>-cidade:</b> campo que armazena o nome da cidade cadastrada.<br>

<b>Estado:</b> tabela que armazena todos os estados dos estacionamentos cadastrados.
<b>-idEstado:</b> campo que identifica o estado cadastrado;<br>
<b>-estado:</b> campo que armazena o nome do estado cadastrado.<br>

<b>Contato:</b> tabela que armazena os contatos dos clientes cadastradas.<br>
<b>-id:</b> campo que identifica o contato que foi armazenado.<br>
<b>-descricao:</b> campo que descreve o contato (3333-3333, email@gmail.com, etc).<br>

<b>Tipo_Contato:</b> tabela que mostra os tipos de contatos existentes no banco.<br>
<b>-cod:</b> campo que identifica o tipo de contato;<br>
<b>-descricao: </b> campo que descreve o tipo de contato (telefone, celular, site pessoal).<br>

<b>Pagamento_Estacionamento:</b> tabela que armazena os pagamentos efetuados ao sair do estacionamento (pagamento total).<br>
<b>-valor:</b> campo que armazena o valor do pagamento.<br>

<b>Permanencia_Vaga:</b> tabela que armazena o tempo que o motorista permaneceu no estacionamento.<br>
<b>-horaSaida:</br> campo que armazena o horario que o motorista saiu do estacionamento.<br>

<b>Pagamento_Reserva:</b> tabela que armazena o pagamento que o motorista realizou no momento da reserva.<br>
<b>-valor:</b> campo que armazena o valor do pagamento.<br>

<b>Tipo_Pagamento:</b> tabela que armazena os tipos de pagamento disponíveis no sistema.<br>
<b>-cod:</b> campo que identifica o tipo de pagamento
<b>-descricao:</b> campo que exibe a forma de pagamento (cartão de crédito, paypal).<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físic
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
>## Marco de Entrega 03 em: (14/05/2018)<br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

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


