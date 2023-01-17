\c naruto;

-- MAPA
INSERT INTO mapa(nome,descricao) VALUES ('brasil','mapa do caio');

-- REGIÃO
INSERT INTO regiao(nome,descricao,nome_mapa) VALUES ('brasilia','capital','brasil');
INSERT INTO regiao(nome,descricao,nome_mapa) VALUES ('amazonas','capital','brasil');
INSERT INTO regiao(nome,descricao,nome_mapa) VALUES ('santa catarina','capital','brasil');
INSERT INTO regiao(nome,descricao,nome_mapa) VALUES ('bahia','capital','brasil');
INSERT INTO regiao(nome,descricao,nome_mapa) VALUES ('mato grosso','capital','brasil');


-- CONECTA
INSERT INTO conecta (centro, north_position, south_position, east_position, west_position) VALUES ('brasilia', 'amazonas', 'santa catarina', 'bahia', 'mato grosso');

-- Personagem
INSERT INTO personagem (nome, nome_regiao, tipo) VALUES ('caio', 'brasilia', 'atacante');