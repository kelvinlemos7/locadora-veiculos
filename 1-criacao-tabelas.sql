-- Criação do Banco de Dados
CREATE DATABASE IF NOT EXISTS LocadoraVeiculos;
USE LocadoraVeiculos;

-- Tabela Cliente
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    CPF VARCHAR(14) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    endereco VARCHAR(200) NOT NULL
);

-- Tabela Veiculo
CREATE TABLE Veiculo (
    idVeiculo INT PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    ano INT NOT NULL,
    placa VARCHAR(10) NOT NULL,
    valorDiaria DECIMAL(10,2) NOT NULL,
    estado ENUM('Disponível', 'Alugado', 'Manutenção') NOT NULL
);

-- Tabela Manutencao
CREATE TABLE Manutencao (
    idManutencao INT PRIMARY KEY,
    idVeiculo INT NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    dataManutencao DATE NOT NULL,
    custo DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo)
);

-- Tabela Pagamento
CREATE TABLE Pagamento (
    idPagamento INT PRIMARY KEY,
    forma ENUM('Cartão', 'Pix', 'Dinheiro') NOT NULL,
    dataPagamento DATE NOT NULL,
    valorTotal DECIMAL(10,2) NOT NULL,
    estado ENUM('Pago', 'Pendente') NOT NULL
);

-- Tabela Locacao
CREATE TABLE Locacao (
    idLocacao INT PRIMARY KEY,
    idCliente INT NOT NULL,
    idPagamento INT NOT NULL,
    dataInicio DATE NOT NULL,
    dataFim DATE NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idPagamento) REFERENCES Pagamento(idPagamento)
);

-- Tabela associativa LocacaoVeiculo
CREATE TABLE LocacaoVeiculo (
    idLocacao INT NOT NULL,
    idVeiculo INT NOT NULL,
    PRIMARY KEY (idLocacao, idVeiculo),
    FOREIGN KEY (idLocacao) REFERENCES Locacao(idLocacao),
    FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo)
);
