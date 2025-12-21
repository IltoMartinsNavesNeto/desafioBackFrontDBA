-- DBA

-- Create Table
-- funcionarios
CREATE TABLE funcionarios (
    MATRICULA INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    NOME VARCHAR(100) NOT NULL,
    CARGO VARCHAR(50) NOT NULL,
	DEPARTAMENTO VARCHAR(30) NOT NULL,	 
    salario NUMERIC(11,2) NOT NULL CHECK (salario > 0),
    data_admissao DATE NOT NULL,
    data_demissao DATE,
    CONSTRAINT chk_datas
        CHECK (data_demissao IS NULL OR data_demissao >= data_admissao)
);

-- Solicitações de auxílio
CREATE TABLE SOL_AUX (
	ID_AUX INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	DESCRICAO VARCHAR(100) NOT NULL,
	DATA_REGISTRO DATE NOT NULL DEFAULT CURRENT_DATE, 
	VALOR_AUX NUMERIC(11,2) NOT NULL CHECK (VALOR_AUX > 0),	
	MATRICULA INTEGER NOT NULL,

    CONSTRAINT fk_matricula
        FOREIGN KEY (matricula)
        REFERENCES funcionarios (matricula)
);

ALTER TABLE SOL_AUX
ADD COLUMN STATUS VARCHAR(20) NOT NULL DEFAULT 'PENDENTE',
ADD CONSTRAINT chk_status_sol_aux
CHECK (STATUS IN ('PENDENTE', 'EM_ANDAMENTO', 'FINALIZADO', 'CANCELADO'));


-- Pagamentos
CREATE TABLE PAGAMENTOS (
	ID_PAG INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	VALOR_PAG NUMERIC(11,2) NOT NULL CHECK (VALOR_PAG > 0),
	ID_AUX INTEGER,
	MATRICULA INTEGER NOT NULL,
	CONSTRAINT FK_MATRICULA
        FOREIGN KEY (matricula)
        REFERENCES funcionarios (matricula),
	CONSTRAINT FK_SOL_AUX
        FOREIGN KEY (ID_AUX)
        REFERENCES SOL_AUX (ID_AUX)
);

-- log de auditoria
CREATE TABLE log_aud (
    id_log INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    descr_log VARCHAR(100) NOT NULL,
    data_registro DATE NOT NULL DEFAULT CURRENT_DATE
);

-----------------------------------------------------------

--Insert 
--funcionarios
INSERT INTO funcionarios (NOME, CARGO, DEPARTAMENTO, salario, data_admissao)
VALUES
('Ana Souza', 'Analista', 'Financeiro', 4500.00, '2019-03-10'),
('Bruno Lima', 'Assistente', 'RH', 3200.00, '2020-01-15'),
('Carlos Mendes', 'Coordenador', 'TI', 6800.00, '2018-07-01'),
('Daniela Rocha', 'Analista', 'TI', 5200.00, '2021-02-20'),
('Eduardo Silva', 'Gerente', 'Financeiro', 9800.00, '2017-05-05'),
('Fernanda Alves', 'Assistente', 'Compras', 3100.00, '2022-04-11'),
('Gustavo Nunes', 'Analista', 'Compras', 4800.00, '2019-09-09'),
('Helena Costa', 'Supervisor', 'RH', 6200.00, '2018-11-30'),
('Igor Martins', 'Analista', 'TI', 5500.00, '2020-06-18'),
('Juliana Pires', 'Assistente', 'Financeiro', 3300.00, '2021-08-02'),
('Kleber Santos', 'Analista', 'RH', 4700.00, '2019-10-14'),
('Larissa Teixeira', 'Coordenador', 'Compras', 6900.00, '2017-03-27'),
('Marcos Araujo', 'Analista', 'TI', 5100.00, '2022-01-10'),
('Natalia Farias', 'Assistente', 'RH', 3000.00, '2023-02-01'),
('Otavio Ribeiro', 'Supervisor', 'Financeiro', 7300.00, '2018-06-06'),
('Paula Guedes', 'Analista', 'Compras', 4600.00, '2020-09-21'),
('Rafael Moraes', 'Gerente', 'TI', 10200.00, '2016-12-12'),
('Simone Barros', 'Assistente', 'Financeiro', 3400.00, '2021-04-19'),
('Tiago Lopes', 'Analista', 'RH', 4900.00, '2019-01-07'),
('Vanessa Cruz', 'Coordenador', 'Financeiro', 7100.00, '2017-08-23');


--Insert SOL_AUX
INSERT INTO SOL_AUX (DESCRICAO, DATA_REGISTRO, VALOR_AUX, MATRICULA, STATUS)
VALUES
('Auxílio alimentação', '2024-01-10', 450.00, 1, 'FINALIZADO'),
('Auxílio transporte', '2024-01-12', 220.00, 2, 'FINALIZADO'),
('Auxílio saúde', '2024-01-15', 800.00, 3, 'EM_ANDAMENTO'),
('Auxílio educação', '2024-01-18', 1200.00, 4, 'PENDENTE'),
('Auxílio alimentação', '2024-01-20', 500.00, 5, 'FINALIZADO'),
('Auxílio transporte', '2024-01-22', 210.00, 6, 'FINALIZADO'),
('Auxílio saúde', '2024-01-25', 900.00, 7, 'EM_ANDAMENTO'),
('Auxílio educação', '2024-02-01', 1500.00, 8, 'PENDENTE'),
('Auxílio alimentação', '2024-02-05', 480.00, 9, 'FINALIZADO'),
('Auxílio transporte', '2024-02-07', 230.00, 10, 'FINALIZADO'),
('Auxílio saúde', '2024-02-10', 850.00, 11, 'EM_ANDAMENTO'),
('Auxílio educação', '2024-02-12', 1400.00, 12, 'PENDENTE'),
('Auxílio alimentação', '2024-02-15', 460.00, 13, 'FINALIZADO'),
('Auxílio transporte', '2024-02-18', 240.00, 14, 'FINALIZADO'),
('Auxílio saúde', '2024-02-20', 920.00, 15, 'EM_ANDAMENTO'),
('Auxílio educação', '2024-02-22', 1600.00, 16, 'PENDENTE'),
('Auxílio alimentação', '2024-03-01', 490.00, 17, 'FINALIZADO'),
('Auxílio transporte', '2024-03-03', 215.00, 18, 'FINALIZADO'),
('Auxílio saúde', '2024-03-05', 870.00, 19, 'EM_ANDAMENTO'),
('Auxílio educação', '2024-03-07', 1300.00, 20, 'PENDENTE'),
('Auxílio alimentação', '2024-03-10', 470.00, 1, 'FINALIZADO'),
('Auxílio transporte', '2024-03-12', 225.00, 2, 'FINALIZADO'),
('Auxílio saúde', '2024-03-15', 910.00, 3, 'EM_ANDAMENTO'),
('Auxílio educação', '2024-03-18', 1550.00, 4, 'PENDENTE'),
('Auxílio alimentação', '2024-03-20', 500.00, 5, 'FINALIZADO');

--Insert Pagamentos 
INSERT INTO PAGAMENTOS (VALOR_PAG, ID_AUX, MATRICULA)
VALUES
(450.00, 1, 1),
(220.00, 2, 2),
(500.00, 5, 5),
(210.00, 6, 6),
(480.00, 9, 9),
(230.00, 10, 10),
(460.00, 13, 13),
(240.00, 14, 14),
(490.00, 17, 17),
(215.00, 18, 18),
(470.00, 21, 1),
(225.00, 22, 2),
(500.00, 25, 5),
(450.00, 1, 1),
(220.00, 2, 2),
(480.00, 9, 9),
(230.00, 10, 10),
(460.00, 13, 13),
(490.00, 17, 17),
(215.00, 18, 18);


--Insert log auditoria
INSERT INTO log_aud (descr_log, data_registro)
VALUES
('Cadastro de funcionário realizado', '2024-01-10'),
('Solicitação de auxílio criada', '2024-01-12'),
('Pagamento efetuado', '2024-01-15'),
('Atualização de status da solicitação', '2024-01-18'),
('Cancelamento de solicitação', '2024-01-20'),
('Novo funcionário admitido', '2024-02-01'),
('Auxílio finalizado', '2024-02-05'),
('Pagamento aprovado', '2024-02-10'),
('Erro de validação corrigido', '2024-02-15'),
('Relatório gerado', '2024-03-01');

---------------------------------------------------------------

-- QUESTÃO 1 - JOIN e ORDER BY 

SELECT 
	FUN.NOME,
	FUN.MATRICULA,
	FUN.DEPARTAMENTO,
	SOL.VALOR_AUX,
	SOL.STATUS,
	SOL.DATA_REGISTRO
FROM 
	FUNCIONARIOS FUN 
JOIN 
	SOL_AUX SOL 
ON 
	SOL.MATRICULA = FUN.MATRICULA
JOIN 
	PAGAMENTOS PAG 
ON 
	(PAG.MATRICULA = FUN.MATRICULA AND PAG.ID_AUX = SOL.ID_AUX)
WHERE 
	STATUS = 'FINALIZADO'
AND 
	SOL.DATA_REGISTRO >= CURRENT_DATE - INTERVAL '6 months'
ORDER BY 
	FUN.DEPARTAMENTO ASC 

