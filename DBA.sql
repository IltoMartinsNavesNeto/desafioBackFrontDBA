# DBA

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

