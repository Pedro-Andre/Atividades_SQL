CREATE TABLE Estudante (
  Matricula INT PRIMARY KEY NOT NULL,
  Nome VARCHAR(125) NOT NULL,
  Idioma VARCHAR(65) NOT NULL,
  Turma INT NOT NULL,
  Data_de_Nascimento DATE NOT NULL,
  Idade INT NOT NULL CHECK (Idade > 12),
  Sexo CHAR(1) NOT NULL CHECK (Sexo IN ('M', 'F')),
  Endereco VARCHAR(255) NOT NULL,
  Telefone CHAR(15) NOT NULL,
  Email VARCHAR(255) NOT NULL
);

CREATE TABLE Professor (
  Codigo_professor INT PRIMARY KEY NOT NULL,
  Nome_professor VARCHAR(125) NOT NULL
);

CREATE TABLE Turma (
  Codigo_turma INT PRIMARY KEY  NOT NULL,
  Codigo_professor INT NOT NULL,
  Codigo_materia INT NOT NULL,
  Ano INT NOT NULL,

  FOREIGN KEY (Codigo_professor) REFERENCES Professor (Codigo_professor)
);

-- Adicionando a chave estrangeira da Tabela Estudante depois da criação da tabela Turma
ALTER TABLE Estudante 
ADD CONSTRAINT fk_estudante_turma FOREIGN KEY (Turma) REFERENCES Turma (Codigo_turma);