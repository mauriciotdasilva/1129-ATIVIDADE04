-- ===========================================
-- CRIAÇÃO DO BANCO DE DADOS (OPCIONAL)
-- ===========================================
CREATE DATABASE IF NOT EXISTS igreja_db;
USE igreja_db;

-- TABELA tbl_endereco
CREATE TABLE tbl_endereco (
    id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    tipo_logadouro VARCHAR(30),
    nome_logradouro VARCHAR(200),
    numero VARCHAR(6),
    complemento VARCHAR(30),
    bairro VARCHAR(30),
    cep VARCHAR(9),
    cidade VARCHAR(30),
    estado VARCHAR(2)
);

-- TABELA tbl_membro
CREATE TABLE tbl_membro (
    id_membro INT PRIMARY KEY AUTO_INCREMENT,
    membro_nome VARCHAR(50),
    membro_sobrenome VARCHAR(200),
    membro_datanascimento DATE,
    membro_rg VARCHAR(20),
    membro_cpf VARCHAR(11),
    id_endereco INT,
    membro_telefone VARCHAR(11),

    CONSTRAINT fk_membro_endereco
        FOREIGN KEY (id_endereco) REFERENCES tbl_endereco(id_endereco)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- TABELA tbl_Ministerio
CREATE TABLE tbl_Ministerio (
    id_Ministerio INT PRIMARY KEY AUTO_INCREMENT,
    Ministerio_Nome VARCHAR(100),
    Ministerio_Descrição VARCHAR(300)
);

-- TABELA tbl_Departamento
CREATE TABLE tbl_Departamento (
    id_Departamento INT PRIMARY KEY AUTO_INCREMENT,
    Departamento_Nome VARCHAR(100),
    Departamento_Descrição VARCHAR(300)
);

-- TABELA tbl_detalhe_departamento
CREATE TABLE tbl_detalhe_departamento (
    id_detalhe_departamento INT PRIMARY KEY AUTO_INCREMENT,
    id_departamento INT,
    id_membro INT,
    detalhe_departamento_funcao VARCHAR(50),
    detalhe_departamento_status VARCHAR(50),
    detalhe_departamento_exercicio VARCHAR(4),

    CONSTRAINT fk_detalhe_departamento_dept
        FOREIGN KEY (id_departamento) REFERENCES tbl_Departamento(id_Departamento)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    CONSTRAINT fk_detalhe_departamento_membro
        FOREIGN KEY (id_membro) REFERENCES tbl_membro(id_membro)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- TABELA tbl_detalhe_ministerio
CREATE TABLE tbl_detalhe_ministerio (
    id_detalhe_ministerio INT PRIMARY KEY AUTO_INCREMENT,
    id_ministerio INT,
    id_membro INT,
    detalhe_ministerio_funcao VARCHAR(50),
    detalhe_ministerio_status VARCHAR(50),
    detalhe_ministerio_exercicio VARCHAR(4),

    CONSTRAINT fk_detalhe_ministerio_min
        FOREIGN KEY (id_ministerio) REFERENCES tbl_Ministerio(id_Ministerio)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    CONSTRAINT fk_detalhe_ministerio_membro
        FOREIGN KEY (id_membro) REFERENCES tbl_membro(id_membro)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);