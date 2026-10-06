-- Proprietários com mais de um veículo;
SELECT p.nome, COUNT(v.id_veiculo) AS quantidade_veiculos
FROM proprietarios p
JOIN veiculos v
    ON p.id_proprietario = v.id_proprietario
GROUP BY p.nome
HAVING COUNT(v.id_veiculo) > 1;


-- Proprietários cujo nome começa com "M";
SELECT p.nome, p.cpf, v.placa
FROM proprietarios p
JOIN veiculos v
    ON p.id_proprietario = v.id_proprietario
WHERE p.nome LIKE 'M%';


-- Valor total das infrações por tipo;
SELECT ti.nome, SUM(ti.valor) AS valor_total
FROM tipos_infracoes ti
JOIN infracoes i
    ON ti.id_tipo_infracao = i.id_tipo_infracao
GROUP BY ti.nome;


-- Infrações em que a velocidade foi superior à permitida;
SELECT 
    v.placa,
    i.velocidade_aferida,
    l.velocidade_permitida,
    l.posicao_geografica
FROM infracoes i
JOIN veiculos v
    ON i.id_veiculo = v.id_veiculo
JOIN locais l
    ON i.id_local = l.id_local
WHERE i.velocidade_aferida > l.velocidade_permitida;


-- Infrações ocorridas no DF;
SELECT 
    v.placa,
    p.nome,
    ti.nome AS tipo_infracao,
    i.data,
    i.hora,
    i.uf
FROM infracoes i
JOIN veiculos v
    ON i.id_veiculo = v.id_veiculo
JOIN proprietarios p
    ON v.id_proprietario = p.id_proprietario
JOIN tipos_infracoes ti
    ON i.id_tipo_infracao = ti.id_tipo_infracao
WHERE i.uf = 'DF';