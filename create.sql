-- criar banco de dados para cenário oficina mecânica
create database oficina;
use oficina;
-- drop database oficina;

-- create tables
CREATE TABLE mecanicos (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(50),
    Endereco VARCHAR(100),
    Especialidade VARCHAR(50)
);

CREATE TABLE servicos (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(50),
    Valor FLOAT,
    Mecanico_resp INT,
    CONSTRAINT fk_mecanico_resp FOREIGN KEY (Mecanico_resp)
        REFERENCES mecanicos (Id)
);

CREATE TABLE veiculos (
	Placa char(7) primary key,
    Modelo varchar(20),
    Marca varchar(20),
    Cor varchar(20),
    Tipo_de_peca varchar(50)
);

CREATE TABLE clientes (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(50),
    CPF CHAR(11),
    CNPJ CHAR(14),
    Endereco VARCHAR(100),
    Telefone CHAR(11),
    Placa_veiculo CHAR(7),
    CONSTRAINT unico_cpf_cliente UNIQUE (CPF),
    CONSTRAINT unico_cnpj_cliente UNIQUE (CNPJ),
    CONSTRAINT fk_cliente_placa FOREIGN KEY (Placa_veiculo)
        REFERENCES veiculos (Placa)
);

CREATE TABLE ordem_de_servico (
    OS_no INT AUTO_INCREMENT PRIMARY KEY,
    Servicos_solicitados VARCHAR(100),
    Data_emissao DATE,
    Valor FLOAT,
    Status_servico ENUM('Em espera', 'Em andamento', 'Finalizado', 'Entregue'),
    Data_entrega DATE,
    Placa_veiculo CHAR(7),
    Id_cliente INT,
    Id_servico int,
    CONSTRAINT fk_ordem_placa FOREIGN KEY (Placa_veiculo)
        REFERENCES veiculos (Placa),
    CONSTRAINT fk_ordem_cliente FOREIGN KEY (Id_cliente)
        REFERENCES clientes (Id),
	CONSTRAINT fk_ordem_serv FOREIGN KEY (Id_servico)
		REFERENCES servicos (Id)
);

