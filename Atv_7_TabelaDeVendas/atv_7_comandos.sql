-- Criando banco de dados
CREATE DATABASE atv_7;
USE atv_7;

-- Criando tabela
CREATE TABLE vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    nomeDoCliente VARCHAR(255) NOT NULL,
    descricaoDoProduto VARCHAR(255) NOT NULL,
    precoDoProduto DECIMAL(10,2) NULL,
    codigoDoProduto VARCHAR(50) NOT NULL,
    dataVenda DATE NOT NULL
);

-- Inserindo dados na tabela
INSERT INTO vendas (nomeDoCliente, descricaoDoProduto, precoDoProduto, codigoDoProduto)
VALUES 
("Júnior Freitas", "Teclado Logitech",	379.90,	"AB77"),
("Wagner Silva", "Arduino Uno", 120.90,	"TT12"),
("Paulo Silva Júnior", "Headset HyperX", 270.90,	"FX11"),
("Ana Clara Batista",	"Arduino Uno", 300.00,	"TW13"),
("Rodrigo Pereira",	"Arduino Uno", 300.00,	"TW13"),
("Ana Clara Batista",	"Mouse Logitech MX Master 3s", 549.49,	"XW13"),
("Elias Barbioz",	"Suporte para Monitor", 249.49,	"KC37"),
("Samuel Nunes",	"Arduino Uno", 120.90,	"TT12"),
("Júlia Silva da Silva", "Barra de Luz Baseus",	288.90,	"FF47"),
("Joana Silva da Silva", "Fone de ouvido JBL Wave Flex",	230.90,	"QR65");


-- Inserindo dados sem preços na tabela
INSERT INTO vendas (nomeDoCliente, descricaoDoProduto, codigoDoProduto)
VALUES 
("Suellen Rocha",	"Mousepad Tecido 90x40", "PY49"),
("Franciele Amorim",	"Suport para Headset", "HJ33");

--  Tópico 1: (Clientes que compraram produtos contendo "Arduino Uno" no nome e com preços entre R$ 100,00 e R$ 300,00)
SELECT DISTINCT nomeDoCliente
FROM vendas
WHERE descricaoDoProduto LIKE '%Arduino Uno%'
AND precoDoProduto BETWEEN 100.00 AND 300.00;

-- Tópico 2: ( Produtos cujo valor esteja cadastrado como NULL no banco de dados)
SELECT DISTINCT codigoDoProduto, descricaoDoProduto, precoDoproduto
FROM vendas
WHERE precoDoProduto IS NULL;

-- Tópico 3: ( Todas as compras feitas pelos clientes específicos: Paulo Silva Júnior, Ana Clara Batista e Joana Silva da Silva)
SELECT nomeDoCliente, codigoDoProduto, descricaoDoProduto, precoDoProduto
FROM vendas
WHERE nomeDoCliente IN ('Paulo Silva Júnior', 'Ana Clara Batista', 'Joana Silva da Silva');
