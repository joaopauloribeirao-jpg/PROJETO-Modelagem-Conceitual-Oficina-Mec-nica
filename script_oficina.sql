
CREATE DATABASE oficina_mecanica;
USE oficina_mecanica;

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(200)
);

CREATE TABLE Veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) UNIQUE NOT NULL,
    modelo VARCHAR(100),
    marca VARCHAR(100),
    ano INT,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Equipe (
    id_equipe INT AUTO_INCREMENT PRIMARY KEY,
    nome_equipe VARCHAR(100) NOT NULL
);

CREATE TABLE Mecanico (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    especialidade VARCHAR(100)
);

CREATE TABLE Equipe_Mecanico (
    id_equipe INT,
    id_mecanico INT,
    PRIMARY KEY (id_equipe, id_mecanico),
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe),
    FOREIGN KEY (id_mecanico) REFERENCES Mecanico(id_mecanico)
);

CREATE TABLE Ordem_Servico (
    id_os INT AUTO_INCREMENT PRIMARY KEY,
    data_emissao DATE NOT NULL,
    data_conclusao DATE,
    status VARCHAR(50) NOT NULL,
    autorizada BOOLEAN DEFAULT FALSE,
    valor_total DECIMAL(10,2),
    id_veiculo INT NOT NULL,
    id_equipe INT NOT NULL,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);

CREATE TABLE Servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(200) NOT NULL,
    valor_mao_obra DECIMAL(10,2) NOT NULL
);

CREATE TABLE OS_Servico (
    id_os INT,
    id_servico INT,
    quantidade INT NOT NULL,
    valor_calculado DECIMAL(10,2),
    PRIMARY KEY (id_os, id_servico),
    FOREIGN KEY (id_os) REFERENCES Ordem_Servico(id_os),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);

CREATE TABLE Peca (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(200) NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL
);

CREATE TABLE OS_Peca (
    id_os INT,
    id_peca INT,
    quantidade INT NOT NULL,
    valor_total_peca DECIMAL(10,2),
    PRIMARY KEY (id_os, id_peca),
    FOREIGN KEY (id_os) REFERENCES Ordem_Servico(id_os),
    FOREIGN KEY (id_peca) REFERENCES Peca(id_peca)
);
