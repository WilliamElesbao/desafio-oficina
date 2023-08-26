-- Inserindo dados na tabela Cliente
INSERT INTO Cliente (nome, endereco, telefone, email)
VALUES
    ('João da Silva', 'Rua A, 123', '(11) 1234-5678', 'joao@email.com'),
    ('Maria Souza', 'Rua B, 456', '(11) 9876-5432', 'maria@email.com'),
    ('Carlos Ferreira', 'Rua C, 789', '(11) 1111-2222', 'carlos@email.com');

-- Inserindo dados na tabela Veiculo
INSERT INTO Veiculo (cliente_id, marca, modelo, ano, placa, cor)
VALUES
    (1, 'Volkswagen', 'Gol', 2019, 'ABC1234', 'Azul'),
    (1, 'Chevrolet', 'Onix', 2020, 'DEF5678', 'Preto'),
    (2, 'Ford', 'Fiesta', 2018, 'GHI9012', 'Prata');

-- Inserindo dados na tabela OrdemServico
INSERT INTO OrdemServico (veiculo_id, data_entrada, descricao_problema, status)
VALUES
    (1, '2023-08-10', 'Motor falhando', 'Em andamento'),
    (2, '2023-08-15', 'Troca de óleo', 'Concluído'),
    (3, '2023-08-20', 'Problema na transmissão', 'Aguardando peças');

-- Inserindo dados na tabela PecaReposicao
INSERT INTO PecaReposicao (nome, descricao, preco)
VALUES
    ('Filtro de óleo', 'Filtro de óleo para veículos', 15.99),
    ('Vela de ignição', 'Vela de ignição para motores a gasolina', 7.50),
    ('Correia dentada', 'Correia dentada para veículos', 25.00);

-- Inserindo dados na tabela ItemOrdemServico
INSERT INTO ItemOrdemServico (ordem_servico_id, peca_id, quantidade)
VALUES
    (1, 1, 1),
    (1, 2, 4),
    (3, 3, 2);
