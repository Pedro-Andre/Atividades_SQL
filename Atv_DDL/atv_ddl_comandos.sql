-- Criando Banco de Dados
CREATE DATABASE atv_ddl;
USE atv_ddl;

-- Criando tabela funcionarios
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    departamento VARCHAR(50),
    cargo VARCHAR(50),
    salario DECIMAL(10,2)
);

-- Criando tabela clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    cidade VARCHAR(100)
);

-- ------//------- --
-- Inserindo dados na tabela funcionarios
INSERT INTO funcionarios (nome, email, departamento, cargo, salario) VALUES
('Ana Silva', 'ana.silva@email.com', 'RH', 'Analista de RH', 4200.00),
('Bruno Costa', 'bruno.costa@email.com', 'TI', 'Desenvolvedor Back-End', 6500.00),
('Carlos Souza', 'carlos.souza@email.com', 'TI', 'Desenvolvedor Front-End', 6200.00),
('Daniela Lima', 'daniela.lima@email.com', 'Marketing', 'Designer Gráfico', 3800.00),
('Eduardo Alves', 'eduardo.alves@email.com', 'Financeiro', 'Analista Financeiro', 5000.00),
('Fernanda Torres', 'fernanda.torres@email.com', 'RH', 'Coordenadora de RH', 5800.00),
('Gabriel Duarte', 'gabriel.duarte@email.com', 'TI', 'Analista de Sistemas', 5400.00),
('Helena Martins', 'helena.martins@email.com', 'Comercial', 'Representante Comercial', 4600.00),
('Igor Nascimento', 'igor.nascimento@email.com', 'TI', 'Suporte Técnico', 3200.00),
('Juliana Rocha', 'juliana.rocha@email.com', 'Marketing', 'Social Media', 3700.00),
('Karina Mendes', 'karina.mendes@email.com', 'Financeiro', 'Contadora', 5100.00),
('Lucas Freitas', 'lucas.freitas@email.com', 'TI', 'Desenvolvedor Full Stack', 7200.00),
('Mariana Dias', 'mariana.dias@email.com', 'RH', 'Assistente de RH', 3100.00),
('Nicolas Ferreira', 'nicolas.ferreira@email.com', 'TI', 'Estagiário de TI', 1500.00),
('Olívia Santos', 'olivia.santos@email.com', 'Comercial', 'Gerente Comercial', 6800.00),
('Pedro Henrique', 'pedro.henrique@email.com', 'Financeiro', 'Diretor Financeiro', 12000.00),
('Quésia Ramos', 'quesia.ramos@email.com', 'Marketing', 'Coordenadora de Marketing', 6000.00),
('Renan Araújo', 'renan.araujo@email.com', 'TI', 'Administrador de Redes', 4900.00),
('Sabrina Lopes', 'sabrina.lopes@email.com', 'RH', 'Psicóloga Organizacional', 5300.00),
('Thiago Monteiro', 'thiago.monteiro@email.com', 'TI', 'Product Owner', 8000.00),
('Ursula Teixeira', 'ursula.teixeira@email.com', 'Marketing', 'Analista de Mídias', 4100.00),
('Vinícius Prado', 'vinicius.prado@email.com', 'TI', 'DevOps Engineer', 7100.00),
('Wesley Moura', 'wesley.moura@email.com', 'Financeiro', 'Assistente Financeiro', 3200.00),
('Xênia Andrade', 'xenia.andrade@email.com', 'RH', 'Recrutadora', 3600.00),
('Yasmin Almeida', 'yasmin.almeida@email.com', 'Comercial', 'Assistente Comercial', 3400.00),
('Zeca Carvalho', 'zeca.carvalho@email.com', 'TI', 'Scrum Master', 7300.00),
('Amanda Oliveira', 'amanda.oliveira@email.com', 'Marketing', 'Copywriter', 3900.00),
('Bruno Vieira', 'bruno.vieira@email.com', 'Comercial', 'Vendedor', 3100.00),
('Cíntia Braga', 'cintia.braga@email.com', 'TI', 'Tester QA', 4600.00),
('Diego Lima', 'diego.lima@email.com', 'TI', 'Arquiteto de Software', 9200.00);

-- Inserindo dados na tabela clientes
INSERT INTO clientes (nome, email, telefone, cidade) VALUES
('Ana Costa', 'ana.costa@email.com', '(11) 91234-5678', 'São Paulo'),
('Bruno Almeida', 'bruno.almeida@email.com', '(21) 99876-5432', 'Rio de Janeiro'),
('Carla Mendes', 'carla.mendes@email.com', '(31) 98765-4321', 'Belo Horizonte'),
('Diego Lima', 'diego.lima@email.com', '(41) 97654-3210', 'Curitiba'),
('Eduarda Ribeiro', 'eduarda.ribeiro@email.com', '(51) 96543-2109', 'Porto Alegre'),
('Fábio Martins', 'fabio.martins@email.com', '(61) 95432-1098', 'Brasília'),
('Gabriela Souza', 'gabriela.souza@email.com', '(71) 94321-0987', 'Salvador'),
('Henrique Oliveira', 'henrique.oliveira@email.com', '(81) 93210-9876', 'Recife'),
('Isabela Rocha', 'isabela.rocha@email.com', '(91) 92109-8765', 'Belém'),
('João Pedro', 'joao.pedro@email.com', '(85) 91098-7654', 'Fortaleza'),
('Karen Silva', 'karen.silva@email.com', '(95) 90987-6543', 'Boa Vista'),
('Lucas Teixeira', 'lucas.teixeira@email.com', '(98) 99876-5432', 'São Luís'),
('Mariana Pires', 'mariana.pires@email.com', '(96) 98765-4321', 'Macapá'),
('Nicolas Freitas', 'nicolas.freitas@email.com', '(92) 97654-3210', 'Manaus'),
('Olívia Farias', 'olivia.farias@email.com', '(82) 96543-2109', 'Maceió'),
('Paulo César', 'paulo.cesar@email.com', '(62) 95432-1098', 'Goiânia'),
('Quésia Monteiro', 'quesia.monteiro@email.com', '(27) 94321-0987', 'Vitória'),
('Rodrigo Lopes', 'rodrigo.lopes@email.com', '(84) 93210-9876', 'Natal'),
('Sabrina Nogueira', 'sabrina.nogueira@email.com', '(86) 92109-8765', 'Teresina'),
('Thiago Araújo', 'thiago.araujo@email.com', '(83) 91098-7654', 'João Pessoa'),
('Ursula Mendes', 'ursula.mendes@email.com', '(73) 90987-6543', 'Ilhéus'),
('Victor Hugo', 'victor.hugo@email.com', '(74) 99876-5432', 'Juazeiro'),
('Wesley Dias', 'wesley.dias@email.com', '(75) 98765-4321', 'Feira de Santana'),
('Xênia Barros', 'xenia.barros@email.com', '(93) 97654-3210', 'Santarém'),
('Yasmin Araújo', 'yasmin.araujo@email.com', '(94) 96543-2109', 'Marabá'),
('Zeca Moura', 'zeca.moura@email.com', '(66) 95432-1098', 'Cuiabá'),
('Amanda Gomes', 'amanda.gomes@email.com', '(67) 94321-0987', 'Campo Grande'),
('Bruna Tavares', 'bruna.tavares@email.com', '(63) 93210-9876', 'Palmas'),
('Carlos Henrique', 'carlos.henrique@email.com', '(65) 92109-8765', 'Várzea Grande'),
('Débora Lima', 'debora.lima@email.com', '(64) 91098-7654', 'Anápolis');

-- Adicionando nova coluna em funcionarios
ALTER TABLE funcionarios
ADD COLUMN data_admissao DATE;

-- Adicionando nova coluna em clientes
ALTER TABLE clientes
ADD COLUMN data_cadastro DATE;

-- Aumento de 10% do salário dos funcionários que ocupam o cargo de Técnico
UPDATE funcionarios
SET salario = salario * 1.10
WHERE cargo = 'Técnico';

--  Removendo todos os clientes que moram na cidade de Salvador
DELETE FROM clientes
WHERE cidade = 'Salvador';

--  Selecionando todos os funcionários com salário superior a R$ 7.000,00
SELECT * FROM funcionarios
WHERE salario > 7000.00;

-- Criando uma VIEW que exibe apenas os funcionários do departamento de TI
CREATE VIEW VwFuncionariosTi AS
SELECT * FROM funcionarios
WHERE departamento = 'TI';

-- Excluindo a VIEW criada anteriormente 
DROP VIEW VwFuncionariosTi;

-- Inserindo  novo cliente
INSERT INTO clientes (nome, email, telefone, cidade, data_cadastro)
VALUES ('Bruna Martins', 'bruna@email.com', '11911112222', 'Curitiba', '2025-05-12');

-- Renomeando a coluna 'cargo' da tabela de funcionários para 'funcao'.
ALTER TABLE funcionarios
RENAME COLUMN cargo TO funcao

-- Apagando a tabela de clientes do banco de dados
DROP TABLE clientes

-- Criando nova tabela com apenas os funcionários com salário superior a R$ 9.000,00
CREATE TABLE funcionariosComSalarioAlto AS
SELECT * FROM funcionarios 
WHERE salario > 9000.00