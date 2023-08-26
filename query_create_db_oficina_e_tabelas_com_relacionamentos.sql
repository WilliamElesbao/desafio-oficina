-- criacao do schema oficina
create database oficina;
use oficina;

-- Tabela de Clientes
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- Tabela de Veículos
CREATE TABLE Veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano INT,
    placa VARCHAR(10) UNIQUE,
    cor VARCHAR(30),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id_cliente)
);

-- Tabela de Ordens de Serviço
CREATE TABLE OrdemServico (
    id_ordem_servico INT AUTO_INCREMENT PRIMARY KEY,
    veiculo_id INT,
    data_entrada DATE,
    descricao_problema TEXT,
    status VARCHAR(20),
    FOREIGN KEY (veiculo_id) REFERENCES Veiculo(id_veiculo)
);

-- Tabela de Peças de Reposição
CREATE TABLE PecaReposicao (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL
);

-- Tabela de Itens de Ordem de Serviço
CREATE TABLE ItemOrdemServico (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    ordem_servico_id INT,
    peca_id INT,
    quantidade INT,
    FOREIGN KEY (ordem_servico_id) REFERENCES OrdemServico(id_ordem_servico),
    FOREIGN KEY (peca_id) REFERENCES PecaReposicao(id_peca)
);
