CREATE DATABASE bdSprint1; 

USE bdSprint1;

CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT, 
    nomeUsuario VARCHAR(45),
    emailUsuario VARCHAR(50),
    senhaUsuario VARCHAR(45),
    cnpj CHAR(18)
); 

CREATE TABLE Animal (
    idAnimal INT PRIMARY KEY AUTO_INCREMENT, 
    nomeAnimmal VARCHAR(45),
    especie VARCHAR(45),
    pesoAnimals FLOAT, 
    dataNasc DATE
); 

CREATE TABLE Arduino(
    idArduino INT PRIMARY KEY AUTO_INCREMENT, 
    temperatura FLOAT,
    dataHoraRegistrada DATETIME
);

INSERT INTO usuario(nomeUsuario, emailUsuario, senhaUsuario, cnpj) VALUES
	('Anthony Mendes', 'anthony@hotmail.com', '123456789', '47.351.690/0001-97'), ('André da Costa', 'andreCosta@gmail.com', '987654321', '35.481.241/0001-84'),
    ('Maria Vieira', 'mari@outlook.com', '1838475656', '81.913.677/0001-12'), ('Letícia Araújo', 'araujoleticia@hotmail.com', '123212346', '30.141.143/0001-84'),
    ('João Miguel Farias', 'fariasmiguel@gmail.com', '675645679', '66.339.871/0001-42'), ('Alexandre Fernandes', 'aleFernandes@outlook.com', '326598563', '22.822.839/0001-48'),
    ('Brenda Carvalho', 'carvalho@gmail.com', '102225485', '11.984.976/0001-62'), ('Milena da Rosa', 'rosaMilena@hotmail.com', '111458956', '64.240.696/0001-06'),
    ('Gustavo Correia', 'gustaCorreia@gmail.com', '145699898', '87.693.067/0001-37'), ('Helena Melo', 'heleninha@outlook.com', '145454784', '62.014.114/0001-48'),
    ('João Vitor da Luz', 'joaoluz@hotmail.com', '258585459', '22.044.225/0001-82'), ('Fernando Cardoso', 'fernandinha@gmail.com', '144454789', '96.009.314/0001-24'),
    ('Maria Sophia Pinto', 'sofigamer@gmail.com', '145478963', '43.227.589/0001-78'), ('André Fernandes', 'fernandes@outlook.com', '212556895', '86.760.126/0001-80'),
    ('Joaquim Barbosa', 'joaquimBarbosa@gmail.com', '214747457', '58.312.013/0001-86'), ('Benício Monteiro', 'monteiro@gmail.com', '021256589', '71.504.848/0001-04'),
    ('Beatriz Viana', 'beaviana@hotmail.com', '025554489', '87.164.042/0001-46'), ('Daniela Martins', 'danmartins@outlook.com', '156986320', '14.659.604/0001-59'),
    ('Enzo Gabriel Costela', 'enzocostela@gmail.com', '014578541', '61.268.502/0001-92'), ('Enzo Gabriel Moreira', 'moreiraenzo@outlook.com', '032656326', '28.631.718/0001-03');    

INSERT INTO animal(nomeAnimmal, especie, pesoAnimals, dataNasc) VALUES
	('Furacão', 'Lêmure de Cauda Anelada', 2.2, '2020-04-08'), ('Breja', 'Lêmure Sifaka', 4.5, '2019-08-21'),
    ('Fera', 'Tartaruga Gigante de Galápagos', 210.9, '2000-01-04'), ('Faísca', 'Macaco-Narigudo', 18.7, '2018-06-07'),
    ('Presidente', 'Diabo Espinhoso', 0.049, '2010-10-05'), ('Cerveja', 'Macaco de Folha Vermelha', 7.7, '2020-04-05'),
    ('Gigante', 'Tigre de Sumatra', 120.5, '2019-05-29'), ('Caipira', 'Booby-de-Patas-Azuis', 1.5, '2021-02-06'), 
    ('Wilson', 'Ave do Paraíso de Wilson', 0.5, '2022-01-01'), ('Zica', 'Elefante Pigmeu', 3000.9, '1900-07-09'),
    ('Biruta', 'Iguana', 3.9, '2020-09-07'), ('Titã', 'Cacatua', 0.7, '2018-04-06'),
    ('Sabonete', 'Jiboia', 13.5, '2019-10-11'), ('Rum', 'Mini pig ', 30.7, '2017-12-21'),
    ('Pulga', 'Chinchila', 0.8, '2020-09-15'), ('Soneca', 'Ferret', 2, '2018-07-09'),
    ('Brisa', 'Coelho', 1.2, '2021-05-03'), ('Drink', 'Tartaruga-tigre-d’água', 3, '2001-08-12'),
    ('Bolota', 'Jabuti-piranga', 8.450, '2017-07-03'), ('Whisky', 'Calopsita', 0.1, '2020-09-19');

INSERT INTO arduino (temperatura, dataHoraRegistrada) VALUES
	(21, '2022-09-06 20:00'), (15, '2022-09-06 23:00'),
    (15, '2022-09-07 06:00'), (16, '2022-09-07 09:00'),
    (18, '2022-09-07 10:00'), (20, '2022-09-07 11:00'),
    (22, '2022-09-07 13:00'), (23, '2022-09-07 14:00'),
    (22, '2022-09-07 16:00'), (19, '2022-09-07 18:00'),
    (18, '2022-09-07 21:00'), (17, '2022-09-07 23:00'),
    (17, '2022-09-08 01:00'), (17, '2022-09-08 04:00'),
    (16, '2022-09-08 06:00'), (23, '2022-09-08 10:00'),
    (29, '2022-09-08 13:00'), (29, '2022-09-08 15:00'),
    (28, '2022-09-08 17:00'), (24, '2022-09-08 19:00'),
    (15, '2022-09-09 06:00'), (16, '2022-09-09 09:00'),
    (18, '2022-09-09 10:00'), (20, '2022-09-09 11:00'),
    (22, '2022-09-09 13:00'), (23, '2022-09-09 14:00'),
    (22, '2022-09-09 16:00'), (19, '2022-09-09 18:00'),
    (18, '2022-09-09 21:00'), (17, '2022-09-09 23:00'),
    (15, '2022-09-10 06:00'), (16, '2022-09-10 09:00'),
    (18, '2022-09-10 10:00'), (20, '2022-09-10 11:00'),
    (22, '2022-09-10 13:00'), (23, '2022-09-10 14:00'),
    (22, '2022-09-10 16:00'), (19, '2022-09-10 18:00'),
    (18, '2022-09-10 21:00'), (17, '2022-09-10 23:00'),
    (17, '2022-09-11 01:00'), (17, '2022-09-11 04:00'),
    (16, '2022-09-11 06:00'), (23, '2022-09-11 10:00');

				-- USUARIO --
-- DADOS DOS USUARIOS CADASTRADOS
SELECT idUsuario AS 'Identificador:', nomeUsuario AS 'Nome:', emailUsuario as 'Email:', cnpj AS 'CNPJ:' FROM usuario;

-- DADOS DOS USUARIOS CADASTRADOS COM O INDENTIFICADOR = 7
SELECT idUsuario AS 'Identificador:', nomeUsuario AS 'Nome:', emailUsuario as 'Email:', cnpj AS 'CNPJ:' FROM usuario
	WHERE idUsuario = 7;
    
-- DADOS DOS USUARIOS QUE POSSUEM GMAIL EM ORDEM ALFABÉTICA
SELECT idUsuario AS 'Identificador:', nomeUsuario AS 'Nome:', emailUsuario as 'Email:', cnpj AS 'CNPJ:' FROM usuario
	WHERE emailUsuario LIKE '%@gmail.com'
		ORDER BY nomeUsuario;
       
				-- ANIMAL --
-- DADOS DOS ANIMAIS CADASTRADOS ORDENADOS DO MAIS NOVO ATÉ O MAIS VELHO
SELECT idAnimal AS 'Identificador:', nomeAnimmal AS 'Nome:', especie AS 'Espécie: ', pesoAnimals AS 'Peso: ', dataNasc AS 'Data de Nascimento' FROM animal
	ORDER BY dataNasc DESC;

-- AS ESPECIES CADASTRADAS EM ORDEM ALFABÉTICA DECRESCENTE
SELECT idAnimal AS 'Identificador:', especie AS 'Espécies Cadastradas' FROM animal
	ORDER BY especie DESC;
    
-- DADOS DOS ANIMAIS QUE TEM MAIS DE 20 QUILOS DO MAIS NOVO ATÉ O MAIS VELHO
SELECT idAnimal AS 'Identificador:', nomeAnimmal AS 'Nome:', especie AS 'Espécie: ', pesoAnimals AS 'Peso: ', dataNasc AS 'Data de Nascimento' FROM animal
	WHERE pesoAnimals > 20
		ORDER BY dataNasc DESC;
    
				-- ARDUINO --
-- DADOS DE TEMPERATURA GERADOS NO DIA 07-09-2022
SELECT idArduino AS 'Identificador:', temperatura, dataHoraRegistrada FROM arduino
	WHERE dataHoraRegistrada >= '2022-09-07 00:00' AND dataHoraRegistrada <= '2022-09-07 23:59';
    
-- DADOS DE TEMPERATURA GERADOS NO DIA 08-09-2022
SELECT idArduino AS 'Identificador:', temperatura, dataHoraRegistrada FROM arduino
	WHERE dataHoraRegistrada >= '2022-09-08 00:00' AND dataHoraRegistrada <= '2022-09-08 23:59';
    
-- DADOS DE TEMPERATURA de 15°C a 16°C
SELECT idArduino AS 'Identificador:', temperatura, dataHoraRegistrada FROM arduino
	WHERE temperatura in(15, 16);