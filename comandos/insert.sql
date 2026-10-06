-- Inserindo dados na tabela 'proprietarios';
INSERT INTO proprietarios(cpf, nome, endereco, bairro, cidade, estado, sexo, data_nascimento, idade) 
VALUES(25874136945, 'Maicon Oliveira', 'Quadra 1 Conjunto A', 'Samambaia Sul', 'Samambaia', 'Distrito Federal', 'M', '2000-03-15', 26);

INSERT INTO proprietarios(cpf, nome, endereco, bairro, cidade, estado, sexo, data_nascimento, idade) 
VALUES(95135785246, 'Mariana Fontes', 'Quadra 2 Conjunto B', 'Vila São José', 'Brazlândia', 'Distrito Federal', 'F', '2002-01-01', 24);

INSERT INTO proprietarios(cpf, nome, endereco, bairro, cidade, estado, sexo, data_nascimento, idade) 
VALUES(15975365428, 'Pedro Santos', 'Quadra 3 Conjunto C', 'Tradicional', 'Guarulhos', 'São Paulo', 'M', '2004-01-01', 22);

INSERT INTO proprietarios(cpf, nome, endereco, bairro, cidade, estado, sexo, data_nascimento, idade) 
VALUES(85214796364, 'Joana Alves', 'Quadra 4 Conjunto D', 'Sul', 'Brazlândia', 'Distrito Federal', 'F', '2000-01-01', 26);

INSERT INTO proprietarios(cpf, nome, endereco, bairro, cidade, estado, sexo, data_nascimento, idade) 
VALUES(25896365419, 'Marta Costa', 'Quadra 5 Conjunto E', 'Santa Tereza', 'Rio de Janeiro', 'Rio de Janeiro', 'F', '2001-01-01', 25);


-- Inserindo dados na tabela 'telefones';
INSERT INTO telefones(id_proprietario, telefone) VALUES(1, 61985669696);
INSERT INTO telefones(id_proprietario, telefone) VALUES(1, 61985471320);
INSERT INTO telefones(id_proprietario, telefone) VALUES(2, 61993641502);
INSERT INTO telefones(id_proprietario, telefone) VALUES(3, 61984562031);
INSERT INTO telefones(id_proprietario, telefone) VALUES(4, 61984759632);
INSERT INTO telefones(id_proprietario, telefone) VALUES(4, 61984521325);
INSERT INTO telefones(id_proprietario, telefone) VALUES(5, 61999651547);
INSERT INTO telefones(id_proprietario, telefone) VALUES(5, 61984714659);


-- Inserindo dados na tabela 'categorias';
INSERT INTO categorias(nome) VALUES('Motocicleta');
INSERT INTO categorias(nome) VALUES('Automóvel');
INSERT INTO categorias(nome) VALUES('Ônibus');
INSERT INTO categorias(nome) VALUES('Caminhão');
INSERT INTO categorias(nome) VALUES('Semirreboque');


-- Inserindo dados na tabela 'modelos';
INSERT INTO modelos(nome) VALUES('CG 160');
INSERT INTO modelos(nome) VALUES('Corolla');
INSERT INTO modelos(nome) VALUES('Apache VIP');
INSERT INTO modelos(nome) VALUES('Delivery 11.180');
INSERT INTO modelos(nome) VALUES('Carreta');


-- Inserindo dados na tabela 'veiculos';
INSERT INTO veiculos(placa, chassi, cor, ano_fabricado, id_proprietario, id_categoria, id_modelo)
VALUES('ABC1D23', '9C2KC0810PR234567', 'Vermelha', 2020, 1, 1, 1);

INSERT INTO veiculos(placa, chassi, cor, ano_fabricado, id_proprietario, id_categoria, id_modelo)
VALUES('DEF4G56', '8BRBD48E0P1234568', 'Prata', 2018, 2, 2, 2);

INSERT INTO veiculos(placa, chassi, cor, ano_fabricado, id_proprietario, id_categoria, id_modelo)
VALUES('GHI7H89', '7BWHB52A0P3456787', 'Azul', 2016, 3, 3, 3);

INSERT INTO veiculos(placa, chassi, cor, ano_fabricado, id_proprietario, id_categoria, id_modelo)
VALUES('JKL0M12', '653658243N4567896', 'Branco', 2014, 4, 4, 4);

INSERT INTO veiculos(placa, chassi, cor, ano_fabricado, id_proprietario, id_categoria, id_modelo)
VALUES('NOP3Q45', '5A9SRB123M5678905', 'Preta', 2012, 5, 5, 5);

INSERT INTO veiculos(placa, chassi, cor, ano_fabricado, id_proprietario, id_categoria, id_modelo)
VALUES('THC2F28', '4C2JQ0950PR232664', 'Verde', 2010, 2, 2, 2);


-- Inserindo dados na tabela 'tipos_infracoes';
INSERT INTO tipos_infracoes(nome, valor) VALUES('Excesso de velocidade', 130.16);
INSERT INTO tipos_infracoes(nome, valor) VALUES('Avançar sinal vermelho', 293.47);
INSERT INTO tipos_infracoes(nome, valor) VALUES('Estacionamento irregular', 195.23);
INSERT INTO tipos_infracoes(nome, valor) VALUES('Uso de celular', 250.35);
INSERT INTO tipos_infracoes(nome, valor) VALUES('Ausência do cinto', 275.56);


-- Inserindo dados na tabela 'locais';
INSERT INTO locais(posicao_geografica, velocidade_permitida) VALUES('-15.8267,-47.9218', 60);
INSERT INTO locais(posicao_geografica, velocidade_permitida) VALUES('-16.7942,-41.8822', 50);
INSERT INTO locais(posicao_geografica, velocidade_permitida) VALUES('-14.8120,-35.8919', 40);
INSERT INTO locais(posicao_geografica, velocidade_permitida) VALUES('-17.7867,-26.9131', 80);
INSERT INTO locais(posicao_geografica, velocidade_permitida) VALUES('-18.8312,-15.9025', 50);


-- Inserindo dados na tabela 'radares';
INSERT INTO radares(nome, uf) VALUES('Radar EPIA Norte', 'DF');
INSERT INTO radares(nome, uf) VALUES('Radar EPTG', 'DF');
INSERT INTO radares(nome, uf) VALUES('Radar AVPSP', 'SP');
INSERT INTO radares(nome, uf) VALUES('Radar Estrutural', 'DF');
INSERT INTO radares(nome, uf) VALUES('Radar STRJ', 'RJ');


-- Inserindo dados na tabela 'agentes';
INSERT INTO agentes(matricula, nome, data_contratacao, tempo_de_servico) VALUES('MTC2018', 'Carlos Mendes', '2018-03-12', 8);
INSERT INTO agentes(matricula, nome, data_contratacao, tempo_de_servico) VALUES('MTC2019', 'Mariana Alves', '2019-07-22', 7);
INSERT INTO agentes(matricula, nome, data_contratacao, tempo_de_servico) VALUES('MTC2020', 'Rafael Oliveira', '2020-01-15', 6);
INSERT INTO agentes(matricula, nome, data_contratacao, tempo_de_servico) VALUES('MTC2021', 'Juliana Costa', '2021-05-10', 5);
INSERT INTO agentes(matricula, nome, data_contratacao, tempo_de_servico) VALUES('MTC2022', 'Fernando Souza', '2022-09-01', 4);


-- Inserindo dados na tabela 'infracoes';
INSERT INTO infracoes(data, hora, uf, velocidade_aferida, id_veiculo, id_tipo_infracao, id_local, id_radar, id_agente)
VALUES('2026-09-20', '08:15:00', 'DF', 115, 1, 1, 1, 1, 1);

INSERT INTO infracoes(data, hora, uf, velocidade_aferida, id_veiculo, id_tipo_infracao, id_local, id_radar, id_agente)
VALUES('2026-07-10', '10:30:00', 'DF', 150, 2, 2, 2, 2, 2);

INSERT INTO infracoes(data, hora, uf, velocidade_aferida, id_veiculo, id_tipo_infracao, id_local, id_radar, id_agente)
VALUES('2026-03-15', '20:18:00', 'SP', 0, 3, 3, 3, 3, 3);

INSERT INTO infracoes(data, hora, uf, velocidade_aferida, id_veiculo, id_tipo_infracao, id_local, id_radar, id_agente)
VALUES('2026-08-07', '15:15:00', 'DF', 70, 4, 4, 4, 4, 4);

INSERT INTO infracoes(data, hora, uf, velocidade_aferida, id_veiculo, id_tipo_infracao, id_local, id_radar, id_agente)
VALUES('2026-10-03', '12:09:00', 'RJ', 45, 5, 5, 5, 5, 5);

INSERT INTO infracoes(data, hora, uf, velocidade_aferida, id_veiculo, id_tipo_infracao, id_local, id_radar, id_agente)
VALUES('2026-09-20', '08:15:00', 'DF', 0, 1, 2, 2, 2, 2);

INSERT INTO infracoes(data, hora, uf, velocidade_aferida, id_veiculo, id_tipo_infracao, id_local, id_radar, id_agente)
VALUES('2026-10-03', '12:09:00', 'RJ', 95, 5, 5, 5, 5, 5);