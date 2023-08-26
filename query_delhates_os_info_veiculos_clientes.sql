-- Listar detalhes de ordens de serviço, incluindo informações do veículo e cliente
SELECT os.id_ordem_servico, os.data_entrada, os.status, v.marca, v.modelo, c.nome AS nome_cliente
FROM OrdemServico os
JOIN Veiculo v ON os.veiculo_id = v.id_veiculo
JOIN Cliente c ON v.cliente_id = c.id_cliente;
