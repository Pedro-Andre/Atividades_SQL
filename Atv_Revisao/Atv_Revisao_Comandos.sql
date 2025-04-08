CREATE DATABASE atv_revisao;
USE atv_revisao;

CREATE TABLE IF NOT EXISTS Quarto (
  codigo INT PRIMARY KEY NOT NULL,
  descricao VARCHAR(155) NOT NULL,
  capacidade INT NOT NULL,
  diaria DECIMAL(10,2) NOT NULL,
);

CREATE TABLE IF NOT EXISTS Reserva (
  codigo INT PRIMARY KEY NOT NULL,
  check_in DATETIME NOT NULL,
  check_out DATETIME NOT NULL,
  num_hospedes INT NOT NULL,
  tipo VARCHAR(45) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  INDEX fk_Reserva_Quarto1_idx (Quarto_codigo ASC) VISIBLE,
  CONSTRAINT fk_Reserva_Quarto1
    FOREIGN KEY (Quarto_codigo)
    REFERENCES Quarto (codigo)
);

CREATE TABLE IF NOT EXISTS Cliente (
  cpf INT PRIMARY KEY NOT NULL,
  nome VARCHAR(145) NOT NULL,
  senha VARCHAR(64) NOT NULL,
  data_nasc DATE NOT NULL,
  Reserva_codigo INT NOT NULL,
  
  UNIQUE INDEX cpf_UNIQUE (cpf ASC) VISIBLE,
  INDEX fk_Cliente_Reserva_idx (Reserva_codigo ASC) VISIBLE,
  CONSTRAINT fk_Cliente_Reserva
    FOREIGN KEY (Reserva_codigo)
    REFERENCES Reserva (codigo)
);

-- Inserindo dados em Quarto
INSERT INTO Quarto (codigo, descricao, capacidade, diaria) 
VALUES
(1,	"Quarto Solteiro",	1,	150.00)
(2,	"Quarto Casal",	2,	220.00)
(3,	"Quarto Família",	4,	350.00)
(4,	"Suíte Luxo",	2,	450.00)
(5,	"Quarto Econômico",	1,	100.00)
(6,	"Quarto Solteiro",	1,	150.00)
(7,	"Quarto Casal",	2,	220.00)
(8,	"Quarto Família",	4,	350.00)
(9,	"Suíte Luxo",	2,	450.00)
(10,	"Quarto Econômico",	1,	100.00)

-- Inserindo dados em Reserva
INSERT INTO Reserva (codigo, check_in, check_out, num_hospedes, tipo, preco, Quarto_codigo) 
VALUES
(101, '2025-04-01 14:00:00', '2025-04-05 12:00:00', 1, 'Individual', 600.00, 1),
(102, '2025-04-02 15:00:00', '2025-04-06 12:00:00', 2, 'Casal', 880.00, 2),
(103, '2025-04-03 13:00:00', '2025-04-04 11:00:00', 1, 'Econômica', 100.00, 5),
(104, '2025-04-04 16:00:00', '2025-04-10 12:00:00', 4, 'Família', 2100.00, 3),
(105, '2025-04-05 14:30:00', '2025-04-08 11:00:00', 2, 'Luxo', 1350.00, 4),
(106, '2025-04-06 12:00:00', '2025-04-09 12:00:00', 1, 'Individual', 450.00, 1),
(107, '2025-04-07 15:00:00', '2025-04-09 12:00:00', 2, 'Casal', 440.00, 2),
(108, '2025-04-08 14:00:00', '2025-04-12 12:00:00', 4, 'Família', 1400.00, 3),
(109, '2025-04-09 13:00:00', '2025-04-10 11:00:00', 1, 'Econômica', 100.00, 5),
(110, '2025-04-10 14:00:00', '2025-04-15 12:00:00', 2, 'Luxo', 2250.00, 4);


-- Inserindo dados em Clientes
INSERT INTO Cliente (cpf, nome, senha, data_nasc, Reserva_codigo) 
VALUES
(11111111111, 'Pedro Almeida', SHA2('pedro123', 256), '1995-05-10', 101),
(22222222222, 'Mariana Silva', SHA2('mari456', 256), '1992-08-25', 102),
(33333333333, 'Lucas Santos', SHA2('lucas789', 256), '2000-01-15', 103),
(44444444444, 'Ana Costa', SHA2('ana321', 256), '1988-03-30', 104),
(55555555555, 'Rafael Lima', SHA2('rafa654', 256), '1993-11-22', 105),
(66666666666, 'Juliana Rocha', SHA2('ju987', 256), '1999-06-18', 106),
(77777777777, 'Carlos Souza', SHA2('carlos147', 256), '1985-12-05', 107),
(88888888888, 'Fernanda Torres', SHA2('fernanda258', 256), '1996-09-12', 108),
(99999999999, 'Bruno Nunes', SHA2('bruno369', 256), '1991-02-08', 109),
(10101010101, 'Paula Mendes', SHA2('paula159', 256), '1998-07-01', 110);

