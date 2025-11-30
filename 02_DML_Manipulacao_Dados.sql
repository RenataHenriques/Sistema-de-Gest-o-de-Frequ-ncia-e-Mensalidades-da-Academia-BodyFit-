-- DML: INSERÇÃO DE DADOS INICIAIS

-- A. Inserir Alunos (Tabela Pai)
INSERT INTO ALUNO (ID_Aluno, Nome, CPF, Email, Telefone) VALUES
(10, 'Julia Santos', '11122233344', 'julia.santos@email.com', '98888-1111'),
(20, 'Marcos Reis', '22233344455', 'marcos.reis@email.com', '98888-2222'),
(30, 'Sofia Lima', '33344455566', 'sofia.lima@email.com', '98888-3333');


-- B. Inserir Matrículas (Filha - FK ID_Aluno)
INSERT INTO MATRICULA (ID_Matricula, DataInicio, DataFimPrevista, Status, ID_Aluno) VALUES
(1, '2024-01-10', '2024-12-31', 'Ativa', 10),  -- Julia (ID 10)
(2, '2024-04-01', '2024-10-01', 'Ativa', 20),  -- Marcos (ID 20)
(3, '2023-12-05', '2024-06-05', 'Finalizada', 30); -- Sofia (ID 30)


-- C. Inserir Pagamentos (Neta - FK ID_Matricula)
INSERT INTO PAGAMENTO (ID_Pagamento, Valor, DataPagamento, Metodo, ID_Matricula) VALUES
(100, 149.90, '2024-05-01', 'Cartão', 1),   -- Pagamento de Julia (Maio)
(101, 149.90, '2024-04-01', 'Cartão', 1),   -- Pagamento de Julia (Abril)
(102, 179.90, '2024-04-10', 'Pix', 2),    -- Pagamento de Marcos (Abril)
(103, 179.90, '2024-05-10', 'Pix', 2),
(104, 130.00, '2024-01-05', 'Boleto', 3); -- Pagamento de Sofia (Janeiro)
