-- Criando tabela 'proprietarios';
CREATE TABLE proprietarios(
	id_proprietario SERIAL PRIMARY KEY,
	cpf CHAR(11) NOT NULL,
	nome VARCHAR(200) NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	bairro VARCHAR(100) NOT NULL,
	cidade VARCHAR(100) NOT NULL,
	estado VARCHAR(100) NOT NULL,
	sexo VARCHAR(100) NOT NULL,
	data_nascimento DATE NOT NULL,
	idade INTEGER NOT NULL
);


-- Criando tabela 'telefones';
CREATE TABLE telefones(
	id_proprietario INTEGER REFERENCES proprietarios(id_proprietario),
	telefone CHAR(11) NOT NULL
);


-- Criando tabela 'categorias';
CREATE TABLE categorias(
	id_categoria SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
);


-- Criando tabela 'modelos';
CREATE TABLE modelos(
	id_modelo SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
);


-- Criando tabela 'veiculos';
CREATE TABLE veiculos(
	id_veiculo SERIAL PRIMARY KEY,
	placa CHAR(7) NOT NULL,
	chassi CHAR(17) NOT NULL,
	cor VARCHAR(100) NOT NULL,
	ano_fabricado INTEGER NOT NULL,
	id_proprietario INTEGER REFERENCES proprietarios(id_proprietario),
	id_categoria INTEGER REFERENCES categorias(id_categoria),
	id_modelo INTEGER REFERENCES modelos(id_modelo)
);


-- Criando tabela 'tipos_infracoes';
CREATE TABLE tipos_infracoes(
	id_tipo_infracao SERIAL PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	valor NUMERIC(6,2) NOT NULL
);


-- Criando tabela 'locais';
CREATE TABLE locais(
	id_local SERIAL PRIMARY KEY,
	posicao_geografica VARCHAR(100) NOT NULL,
	velocidade_permitida INTEGER NOT NULL
);


-- Criando tabela 'radares';
CREATE TABLE radares(
	id_radar SERIAL PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	uf VARCHAR(3) NOT NULL
);


-- Criando tabela 'agentes';
CREATE TABLE agentes(
	id_agente SERIAL PRIMARY KEY,
	matricula VARCHAR(50) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	data_contratacao DATE NOT NULL,
	tempo_de_servico INTEGER NOT NULL
);


-- Criando tabela 'infracoes';
CREATE TABLE infracoes(
	id_infracao SERIAL PRIMARY KEY,
	data DATE NOT NULL,
	hora TIME NOT NULL,
	uf VARCHAR(3) NOT NULL,
	velocidade_aferida INTEGER NOT NULL,
	id_veiculo INTEGER REFERENCES veiculos(id_veiculo),
	id_tipo_infracao INTEGER REFERENCES tipos_infracoes(id_tipo_infracao),
	id_local INTEGER REFERENCES locais(id_local),
	id_radar INTEGER REFERENCES radares(id_radar),
	id_agente INTEGER REFERENCES agentes(id_agente)
);