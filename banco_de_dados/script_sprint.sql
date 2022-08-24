USE sprint1;

-- TABELA DO USUARIO 
CREATE TABLE usuario (
  idusuario INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  sobrenome VARCHAR(100),
  cpf VARCHAR(14),
  email VARCHAR(150),
  senha VARCHAR(100));
 
 
 -- TABELA DO ARDUINO 
CREATE TABLE arduino (
  idarduino INT PRIMARY KEY AUTO_INCREMENT,
  temperatura FLOAT,
  horario DATETIME,
  horarioDesligado DATETIME,
  luminosidade BOOLEAN);
  
  
  -- TABELA DO ANIMAL
  CREATE TABLE animal (
  idanimaL INT PRIMARY KEY AUTO_INCREMENT,
  nomeAnimal VARCHAR(45),
  peso FLOAT,
  especie VARCHAR(45),
  dtNasc DATE);
    
  
-- INSERINDO NA TABELA usuario OS VALORES nome(VARCHAR), sobrenome(VARCHAR), cpf(VARCHAR), email(VARCHAR) e senha(VARCHAR)
  INSERT INTO usuario(nome, sobrenome, cpf, email, senha) VALUES 
	('Irineu', 'Samu', '389.573.370-91', 'irineu@gmail.com', '123'),
	('Matheus', 'Jarvas', '849.637.740-70', 'jarvas@gmail.com', '123'),
    ('Picolo', 'Sayajin', '837.168.610-22', 'picolo@outlook.com', '123'),
    ('Paula', 'Santos', '822.439.350-07', 'paulinha@hotmail.com', '1235645654'); 
    
SELECT * FROM usuario;



-- ESTÁ INSERINDO NA TABELA arduino OS VALORES DE temperatura(FLOAT), 
-- horario(DATETIME), horarioDesligado(DATETIME) e luminosidade(BOOLEAN)
INSERT INTO arduino(temperatura, horario, horarioDesligado, luminosidade) VALUES 
	(18.9, '0000-00-00 18:20', '0000-00-00 18:40', FALSE),
    (26.3, '0000-00-00 18:20', NULL, TRUE),
    (30, '0000-00-00 18:20', '0000-00-00 18:40', FALSE),
    (29.9, '0000-00-00 18:20', NULL, TRUE);
-- QUANDO O HORARIO ESTIVER  NULL (horarioDesligado = NULL) A LUZ VAI ESTAR LIGADA (luminosidade = TRUE)
-- QUANDO CADASTRAR QUE A LUZ FOI DESLIGADA (horarioDesligado = 'qualquer_horario') A LUZ VAI ESTAR DESLIGADA (luminosidade = FALSE)

SELECT * FROM arduino;
    
    
    
    
    
-- ESTÁ INSERINDO NA TABELA animal OS VALORES em nomeAnimal(VARCHAR), peso (FLOAT), especie(VARCHAR), dtNasc(DATE)
INSERT INTO animal(nomeAnimal, peso, especie, dtNasc) VALUES 
	('Bolinha', 12, 'Macaco de Folha Vermelha', '2020-10-08'), 
    ('Blue', 38.8, 'Arara-Azul', '2010-10-22'), 
    ('Cobrinha', 57, 'Jiboia', '2009-01-12'), 
    ('Julio', 20, 'Cobra Papagaio', '2019-02-03'),
    ('Neymar', 19, 'Canário', '2022-01-17'); 
    
SELECT * FROM animal;
  
