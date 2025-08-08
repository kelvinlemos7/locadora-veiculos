-- Consulta 1
SELECT descricao, dataManutencao, custo
FROM Manutencao;

-- Consulta 2
SELECT SUM(valorTotal) AS totalArrecadado
FROM Pagamento
WHERE estado = 'Pago';

-- Consulta 3
SELECT V.modelo, V.marca, COUNT(LV.idLocacao) AS totalLocacoes
FROM Veiculo V
JOIN LocacaoVeiculo LV ON V.idVeiculo = LV.idVeiculo
GROUP BY V.idVeiculo
ORDER BY totalLocacoes DESC;

-- Consulta 4
SELECT C.nome, SUM(P.valorTotal) AS valorDevido
FROM Cliente C
JOIN Locacao L ON C.idCliente = L.idCliente
JOIN Pagamento P ON L.idPagamento = P.idPagamento
WHERE P.estado = 'Pendente'
GROUP BY C.nome
ORDER BY C.nome ASC;
