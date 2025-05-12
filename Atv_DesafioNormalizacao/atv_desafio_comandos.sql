-- Tabela de Clientes
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nome_Cliente VARCHAR(100),
    Endereco VARCHAR(150),
    Cidade VARCHAR(100),
    Estado CHAR(2)
);

-- Tabela de Produtos
CREATE TABLE Produtos (
    ID_Produto INT PRIMARY KEY,
    Nome_Produto VARCHAR(100),
    Categoria VARCHAR(50),
    Preco_Unitario DECIMAL(10,2)
);

-- Tabela de Motoristas
CREATE TABLE Motoristas (
    ID_Motorista INT PRIMARY KEY,
    Nome_Motorista VARCHAR(100),
    CNH VARCHAR(20) UNIQUE,
    Veiculo VARCHAR(50)
);

-- Tabela de Pedidos
CREATE TABLE Pedidos (
    ID_Pedido INT PRIMARY KEY,
    ID_Cliente INT,
    ID_Produto INT,
    Quantidade INT,
    ID_Motorista INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto),
    FOREIGN KEY (ID_Motorista) REFERENCES Motoristas(ID_Motorista)
);


-- Inserindo dados em Clientes
INSERT INTO Clientes VALUES
(1, 'João Silva', 'Rua A, 123', 'São Paulo', 'SP'),
(2, 'Maria Souza', 'Rua B, 456', 'Rio de Janeiro', 'RJ'),
(3, 'Lucas Lima', 'Rua C, 789', 'Belo Horizonte', 'MG');

-- Inserindo dados em Produtos
INSERT INTO Produtos VALUES
(1, 'Teclado', 'Eletrônicos', 120.00),
(2, 'Monitor', 'Eletrônicos', 600.00),
(3, 'Mouse', 'Eletrônicos', 50.00),
(4, 'Impressora', 'Eletrônicos', 1200.00);

-- Inserindo dados em Motoristas
INSERT INTO Motoristas VALUES
(1, 'Carlos Mendes', '123456789', 'Van A'),
(2, 'Ana Pereira', '987654321', 'Caminhão B'),
(3, 'João Almeida', '654321987', 'Caminhão C');

-- Inserindo dados em Pedidos
INSERT INTO Pedidos VALUES
(101, 1, 1, 1, 1),
(102, 2, 2, 1, 2),
(103, 1, 3, 2, 1),
(104, 3, 4, 1, 3),
(105, 1, 1, 1, 1);
