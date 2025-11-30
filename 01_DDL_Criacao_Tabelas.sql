-- DDL: CRIAÇÃO DAS TABELAS (MODELO FÍSICO)

-- 1. Tabela ALUNO (Pai)
CREATE TABLE ALUNO (
    ID_Aluno INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) UNIQUE NOT NULL,
    Email VARCHAR(100),
    Telefone VARCHAR(15)
);

-- 2. Tabela MATRÍCULA (Filha de ALUNO)
CREATE TABLE MATRICULA (
    ID_Matricula INT PRIMARY KEY,
    DataInicio DATE NOT NULL,
    DataFimPrevista DATE,
    Status VARCHAR(20) NOT NULL, -- Ex: Ativa, Cancelada
    
    -- Chave Estrangeira ligando a ALUNO
    ID_Aluno INT NOT NULL,
    FOREIGN KEY (ID_Aluno) REFERENCES ALUNO(ID_Aluno)
);

-- 3. Tabela PAGAMENTO (Filha de MATRÍCULA)
CREATE TABLE PAGAMENTO (
    ID_Pagamento INT PRIMARY KEY,
    Valor DECIMAL(10, 2) NOT NULL,
    DataPagamento DATE NOT NULL,
    Metodo VARCHAR(50),
    
    -- Chave Estrangeira ligando a MATRICULA
    ID_Matricula INT NOT NULL,
    FOREIGN KEY (ID_Matricula) REFERENCES MATRICULA(ID_Matricula)
);
