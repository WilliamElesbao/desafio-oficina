-- Calcular a idade média dos veículos
SELECT AVG(YEAR(CURDATE()) - ano) AS idade_media FROM Veiculo;

-- Calcular o valor total de uma ordem de serviço
SELECT os.id_ordem_servico, SUM(p.preco * ios.quantidade) AS valor_total
FROM OrdemServico os
JOIN ItemOrdemServico ios ON os.id_ordem_servico = ios.ordem_servico_id
JOIN PecaReposicao p ON ios.peca_id = p.id_peca
GROUP BY os.id_ordem_servico;
