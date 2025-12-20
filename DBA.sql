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


