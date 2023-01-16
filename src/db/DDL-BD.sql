CREATE DATABASE naruto;

CREATE TYPE tipo_personagem as enum ('atacante', 'entregador_de_missao');
CREATE TYPE tipo_atacante as enum ('personagem_principal', 'inimigo');
CREATE TYPE tipo_item as enum ('cura', 'ataque', 'defesa', 'chakra');
CREATE TYPE tipo_missao as enum ('primaria', 'secundaria', 'treinamento');
CREATE TYPE tipo_resultado as enum ('vitoria', 'derrota', 'empate');

CREATE TABLE IF NOT EXISTS regiao(
  nome VARCHAR(40),
  descricao VARCHAR(400),

  CONSTRAINT regiao_pk PRIMARY KEY(nome),
  CONSTRAINT regiao_mapa_fk FOREIGN KEY (nome_mapa) REFERENCES mapa (nome)
);

CREATE TABLE IF NOT EXISTS instancia_regiao(
  id SERIAL,
  nome_regiao VARCHAR(40) NOT NULL,
  norte INTEGER,
  sul INTEGER,
  leste INTEGER,
  oeste INTEGER,

  CONSTRAINT instancia_regiao_pk PRIMARY KEY(id, nome_regiao),
  CONSTRAINT instancia_item_regiao_fk FOREIGN KEY (nome_regiao) REFERENCES regiao (nome)
);

CREATE TABLE IF NOT EXISTS cura(
  nome_item VARCHAR(40),
  quantidade SMALLINT NOT NULL,

  CONSTRAINT cura_pk PRIMARY KEY(nome_item),
  CONSTRAINT cura_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT quantidade_ck CHECK((quantidade >= 0) AND (quantidade <= 100))
);
-- todo(verificar dimensão de quantidade)

CREATE TABLE IF NOT EXISTS ataque(
  nome_item VARCHAR(40),
  dano SMALLINT NOT NULL,

  CONSTRAINT ataque_pk PRIMARY KEY(nome_item),
  CONSTRAINT ataque_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT dano_ck CHECK((dano >= 0) AND (dano <= 100))
);
-- todo(verificar dimensão de dano)


CREATE TABLE IF NOT EXISTS defesa(
  nome_item VARCHAR(40),
  incremento SMALLINT NOT NULL,

  CONSTRAINT defesa_pk PRIMARY key (nome_item),
  CONSTRAINT defesa_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT incremento_ck check ((incremento >= 0) AND (incremento <= 100))
);
-- todo(verificar dimensão de incremento)

CREATE TABLE IF NOT EXISTS chakra(
  nome_item VARCHAR(40),
  ganho SMALLINT NOT NULL,

  CONSTRAINT chakra_pk PRIMARY KEY(nome_item),
  CONSTRAINT chakra_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT ganho_ck CHECK((ganho >= 0) AND (ganho <= 100))
);
-- todo(verificar dimensão de ganho)

CREATE TABLE IF NOT EXISTS personagem(
  nome VARCHAR(40),
  id_instancia_regiao INTEGER NOT NULL,
  nome_regiao VARCHAR(40) NOT NULL,
  tipo tipo_personagem,

  CONSTRAINT personagem_pk PRIMARY KEY(nome),
  CONSTRAINT personagem_instancia_regiao_fk FOREIGN KEY (id_instancia_regiao, nome_regiao) REFERENCES instancia_regiao (id, nome_regiao)
)

CREATE TABLE IF NOT EXISTS entregador_missao(
  nome_entregador VARCHAR(40),

  CONSTRAINT entregador_pk PRIMARY KEY(nome_entregador),
  CONSTRAINT entregador_personagem_fk FOREIGN KEY (nome_entregador) REFERENCES personagem (nome) 
);

CREATE TABLE IF NOT EXISTS inventario(
  id SERIAL,

  CONSTRAINT inventario_pk PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS atacante(
  nome_atacante VARCHAR(40),
  nivel INTEGER,
  vida INTEGER,
  chakra INTEGER,
  defesa INTEGER,
  ataque INTEGER,
  id_inventario INTEGER,
  tipo tipo_atacante NOT NULL,

  CONSTRAINT atacante_pk PRIMARY KEY(nome_atacante),
  CONSTRAINT atacante_personagem_fk FOREIGN KEY (nome_atacante) REFERENCES personagem (nome), 
  CONSTRAINT atacante_inventario_fk FOREIGN KEY (id_inventario) REFERENCES inventario (id) 
);

CREATE TABLE IF NOT EXISTS item(
  nome VARCHAR(40),
  descricao VARCHAR(400),
  desaparece BOOLEAN NOT NULL,
  tipo tipo_item NOT NULL,

  CONSTRAINT item_pk PRIMARY KEY(nome)
); 
-- todo (garantir que um item esteja apenas em um local (Região, Inventario ou Personagem))

CREATE TABLE IF NOT EXISTS instancia_item(
  id SERIAL,
  nome_item VARCHAR(40) NOT NULL,
  quantidade INTEGER NOT NULL DEFAULT 1,
  id_inventario INTEGER,
  id_instancia_regiao INTEGER,
  nome_regiao VARCHAR(40),

  CONSTRAINT instancia_item_pk PRIMARY KEY(id, nome_item),
  CONSTRAINT instancia_item_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT instancia_item_inventario_fk FOREIGN KEY (id_inventario) REFERENCES inventario (id),
  CONSTRAINT instancia_item_regiao_fk FOREIGN KEY (id_instancia_regiao, nome_regiao) REFERENCES instancia_regiao (id, nome_regiao)
);

CREATE TABLE IF NOT EXISTS loja(
  nome VARCHAR(40),
  taxa INTEGER,
  id_instancia_regiao INTEGER NOT NULL,
  nome_regiao VARCHAR(40) NOT NULL,

  CONSTRAINT loja_pk PRIMARY KEY(nome),
  CONSTRAINT loja_regiao_fk FOREIGN KEY (id_instancia_regiao, nome_regiao) REFERENCES regiao (id, nome_regiao)
);

CREATE TABLE IF NOT EXISTS venda(
  id SERIAL,
  id_instancia_item INTEGER NOT NULL,
  valor_compra INTEGER NOT NULL,
  nome_item VARCHAR(40) NOT NULL,
  nome_loja VARCHAR(40) NOT NULL,

  CONSTRAINT venda_pk PRIMARY KEY(id),
  CONSTRAINT venda_instancia_item_fk FOREIGN KEY (id_instancia_item, nome_item) REFERENCES instancia_item (id, nome_item),
  CONSTRAINT venda_loja_fk FOREIGN KEY (nome_loja) REFERENCES loja (nome)
);


CREATE TABLE IF NOT EXISTS personagem_principal(
  nome_personagem VARCHAR(40),
  dinheiro INTEGER,
  experiencia INTEGER,
  descricao VARCHAR(400),

  CONSTRAINT personagem_principal_pk PRIMARY KEY(nome_personagem),
  CONSTRAINT dinheiro_ck CHECK((dinheiro >= 0) AND (dinheiro <= 999)),
  CONSTRAINT experiencia_ck CHECK((experiencia >= 0) AND (experiencia <= 100)),
  CONSTRAINT personagem_atacante FOREIGN KEY (nome_personagem) REFERENCES atacante (nome_atacante) 
)

CREATE TABLE IF NOT EXISTS inimigo(
  nome_inimigo VARCHAR(40),
  e_boss BOOLEAN NOT NULL DEFAULT FALSE,
  dialogo_encontro VARCHAR(400),
  dialogo_vitoria VARCHAR(400),
  dialogo_derrota VARCHAR(400),
  experiencia_concedida INTEGER,

  CONSTRAINT inimigo_pk PRIMARY KEY(nome_inimigo),
  CONSTRAINT inimigo_atacante_fk FOREIGN KEY (nome_inimigo) REFERENCES atacante (nome_atacante)
)

CREATE TABLE IF NOT EXISTS instancia_inimigo(
  id SERIAL,
  nome_inimigo VARCHAR(40),

  CONSTRAINT instancia_inimigo_pk PRIMARY KEY(id, nome_inimigo),
  CONSTRAINT instancia_inimigo_inimigo_fk FOREIGN KEY (nome_inimigo) REFERENCES inimigo (nome_inimigo)
)

CREATE TABLE IF NOT EXISTS batalha(
  id SERIAL,
  tempo_decorrido INTEGER,
  resultado tipo_resultado,
  nome_personagem_principal VARCHAR(40),
  nome_inimigo VARCHAR(40),
  id_instancia_inimigo INTEGER,

  CONSTRAINT batalha_pk PRIMARY KEY(id),
  CONSTRAINT batalha_personagem_principal_fk FOREIGN KEY (nome_personagem_principal) REFERENCES personagem_principal (nome_personagem),
  CONSTRAINT batalha_nome_inimigo_fk FOREIGN KEY (nome_inimigo, id_instancia_inimigo) REFERENCES instancia_inimigo (nome_inimigo, id)
)

CREATE TABLE IF NOT EXISTS jutsu(
  nome VARCHAR(40),
  descricao VARCHAR(450),
  dano INTEGER,
  chakra_gasto_por_uso INTEGER,

  CONSTRAINT jutsu_pk PRIMARY KEY (nome)
)

CREATE TABLE IF NOT EXISTS sabe_jutsu(
  nome_jutsu VARCHAR(40),
  nome_atacante VARCHAR(40),

  CONSTRAINT sabe_jutsu_pk PRIMARY KEY (nome_jutsu, nome_atacante),
  CONSTRAINT sabe_jutsu_jutsu_fk FOREIGN KEY (nome_jutsu) REFERENCES jutsu (nome),
  CONSTRAINT sabe_jutsu_atacante_fk FOREIGN KEY (nome_atacante) REFERENCES atacante (nome_atacante)
)

CREATE TABLE IF NOT EXISTS missao(
  titulo VARCHAR(60),
  tipo tipo_missao,

  CONSTRAINT missao_pk PRIMARY KEY (titulo)
)

CREATE TABLE IF NOT EXISTS geral(
  titulo_missao VARCHAR(60),
  is_primary BOOLEAN,
  descricao VARCHAR(1200),
  experiencia_ganha INTEGER,
  nivel_necessario INTEGER,
  id_instancia_inimigo INTEGER,
  nome_inimigo VARCHAR(40),
  id_instancia_item INTEGER,
  nome_item VARCHAR(40),


  CONSTRAINT geral_pk PRIMARY KEY (titulo_missao),
  CONSTRAINT geral_missao_fk FOREIGN KEY (titulo_missao) REFERENCES missao (titulo),
  CONSTRAINT geral_instancia_item_fk FOREIGN KEY (id_instancia_item, nome_item) REFERENCES instancia_item (id, nome_item),
  CONSTRAINT geral_instancia_inimigo_fk FOREIGN KEY (id_instancia_inimigo, nome_inimigo) REFERENCES instancia_inimigo (id, nome_inimigo)
)

CREATE TABLE IF NOT EXISTS treinamento(
  titulo_missao VARCHAR(60),
  descricao VARCHAR(1200),
  experiencia_ganha INTEGER,
  nivel_necessario INTEGER,
  incremento INTEGER,
  tempo_requerido INTEGER,
  chance_sucesso INTEGER,
  cooldown INTEGER,
  nome_personagem VARCHAR(40),

  CONSTRAINT treinamento_pk PRIMARY KEY (titulo_missao),
  CONSTRAINT treinamento_missao_fk FOREIGN KEY (titulo_missao) REFERENCES missao (titulo),
  CONSTRAINT treinamento_personagem_principal_fk FOREIGN KEY (nome_personagem) REFERENCES personagem_principal (nome_personagem)
)


CREATE TABLE IF NOT EXISTS instancia_missao(
  id SERIAL,
  titulo_missao VARCHAR(60),
  nome_entregador VARCHAR(40),
  nome_personagem VARCHAR(40),

  CONSTRAINT instancia_missao_pk PRIMARY KEY (id),
  CONSTRAINT instancia_missao_missao_fk FOREIGN KEY (titulo_missao) REFERENCES missao (titulo),
  CONSTRAINT instancia_missao_entregador_fk FOREIGN KEY (nome_entregador) REFERENCES entregador_missao (nome_entregador),
  CONSTRAINT instancia_missao_personagem_principal_fk FOREIGN KEY (nome_personagem) REFERENCES personagem_principal (nome_personagem)
)