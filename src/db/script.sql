CREATE DATABASE naruto;

CREATE TYPE tipo_personagem('atacante', 'entregador_de_missao');
CREATE TYPE tipo_item('cura', 'ataque', 'defesa', 'chakra');

CREATE TABLE IF NOT EXISTS mapa(
  nome CHAR(20),
  /*tamanho*/ 
  descricao VARCHAR(100),

  CONSTRAINT PRIMARY KEY(nome)
);

CREATE TABLE IF NOT EXISTS regiao(
  nome CHAR(20),
  descricao VARCHAR(100),
  nome_mapa CHAR(20) NOT NULL,
  /*latitude*/
  /*longitude*/

  CONSTRAINT regiao_pk PRIMARY KEY(nome),
  CONSTRAINT regiao_mapa_fk FOREIGN KEY (nome_mapa) REFERENCES mapa (nome_mapa)
);

CREATE TABLE IF NOT EXISTS item(
  nome CHAR(20),
  taxa SMALLINT,
  nome_regiao CHAR(20) NOT NULL,
  tipo tipo_item,

  CONSTRAINT item_pk PRIMARY KEY(nome)
);

CREATE TABLE IF NOT EXISTS cura(
  nome_item CHAR(20),
  quantidade SMALLINT,

  CONSTRAINT cura_pk PRIMARY KEY(nome_item)
  CONSTRAINT cura_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT quantidade_cura_ck CHECK((quantidade_cura >= 0) AND (quantidade_cura <= 100))
);

CREATE TABLE IF NOT EXISTS ataque(
  nome_item CHAR(20),
  dano SMALLINT,

  CONSTRAINT ataque_pk PRIMARY KEY(nome_item),
  CONSTRAINT ataque_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT quantidade_ataque_ck CHECK((quantidade_ataque >= 0) AND (quantidade_ataque <= 100))
);

CREATE TABLE IF NOT EXISTS defesa(
  nome_item CHAR(20),
  incremento SMALLINT,

  CONSTRAINT defesa_pk PRIMARY KEY(nome_item)
  CONSTRAINT defesa_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT quantidade_defesa_ck CHECK((quantidade_defesa >= 0) AND (quantidade_defesa <= 100)),
);

CREATE TABLE IF NOT EXISTS chakra(
  nome_item CHAR(20),
  ganho SMALLINT,

  CONSTRAINT chakra_pk PRIMARY KEY(nome_item),
  CONSTRAINT chakra_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT quantidade_chakra_ck CHECK((quantidade_chakra >= 0) AND (quantidade_chakra <= 100)),
);

CREATE TABLE IF NOT EXISTS personagem(
  nome CHAR(20),
  nome_regiao CHAR(20) NOT NULL,
  tipo tipo_personagem,

  CONSTRAINT personagem_pk PRIMARY KEY(nome)
  CONSTRAINT personagem_regiao_fk FOREIGN KEY (nome_regiao) REFERENCES regiao (nome) /*ON DELETE SET NULL*/
)

CREATE TABLE IF NOT EXISTS atacante(
  nome_atacante CHAR(20)
  nivel INTEGER,
  vida INTEGER,
  chakra INTEGER,
  defesa INTEGER,
  ataque INTEGER,

  CONSTRAINT atacante_pk PRIMARY KEY(nome_atacante)
  CONSTRAINT atacante_personagem_fk FOREIGN KEY (nome_atacante) REFERENCES personagem (nome) 
);

CREATE TABLE IF NOT EXISTS entregador_missao(
  nome_entregador CHAR(20),

  CONSTRAINT entregador_pk PRIMARY KEY(nome_entregador),
  CONSTRAINT entregador_personagem_fk FOREIGN KEY (nome_entregador) REFERENCES personagem (nome) 
);

CREATE TABLE IF NOT EXISTS inventario(
  id INTEGER SERIAL,
  nome_atacante CHAR(20) NOT NULL,

  CONSTRAINT inventario_pk PRIMARY KEY(id),
  CONSTRAINT inventario_atacante_fk FOREIGN KEY (nome_atacante) REFERENCES atacante (nome_atacante),
);

CREATE TABLE IF NOT EXISTS instancia_item(
  id INTEGER SERIAL,
  nome_item CHAR(20),
  quantidade INTEGER,
  id_inventario,
  nome_regiao,

  CONSTRAINT instancia_item_pk PRIMARY KEY(id, nome_item),
  CONSTRAINT instancia_item_inventario_fk FOREIGN KEY (id_inventario) REFERENCES inventario (id),
  CONSTRAINT instancia_item_regiao_fk FOREIGN KEY (nome_regiao) REFERENCES regiao (nome)
);

CREATE TABLE IF NOT EXISTS loja(
  nome CHAR(20),
  descricao VARCHAR(100),
  desaparece boolean,

  CONSTRAINT loja_pk PRIMARY KEY(nome),
  CONSTRAINT loja_regiao_fk FOREIGN KEY (nome_regiao) REFERENCES regiao (nome) ,
  CONSTRAINT taxa_ck CHECK((taxa >= 0) AND (taxa <= 100))
);

CREATE TABLE IF NOT EXISTS venda(
  id INTEGER SERIAL,
  id_instancia_item INTEGER NOT NULL,
  nome_item CHAR(20) NOT NULL,
  nome_loja CHAR(20) NOT NULL,

  CONSTRAINT venda_pk PRIMARY KEY(id),
  CONSTRAINT venda_instancia_item_id_fk FOREIGN KEY (id_instancia_item) REFERENCES instancia_item (id),
  CONSTRAINT venda_instancia_item_nome_fk FOREIGN KEY (id_instancia_item) REFERENCES instancia_item (nome_item),
  CONSTRAINT venda_loja_fk FOREIGN KEY (nome_loja) REFERENCES loja (nome)
);


CREATE TABLE IF NOT EXISTS personagem_principal(
  nome_personagem CHAR(20),
  dinheiro INTEGER,
  experiencia INTEGER,

  CONSTRAINT personagem_principal_pk PRIMARY KEY(nome_personagem),
  CONSTRAINT dinheiro_ck CHECK((dinheiro >= 0) AND (dinheiro <= 999)),
  CONSTRAINT experiencia_ck CHECK((experiencia >= 0) AND (experiencia <= 100)),
  CONSTRAINT personagem_atacante FOREIGN KEY (nome_personagem) REFERENCES atacante (nome_atacante) /*ON DELETE SET NULL*/
)

CREATE TABLE IF NOT EXISTS inimigo(
  nome_inimigo CHAR(20),
  e_boss BOOLEAN,

  CONSTRAINT inimigo_pk PRIMARY KEY(nome_inimigo),
  CONSTRAINT inimigo_atacante_fk FOREIGN KEY (nome_inimigo) REFERENCES atacante (nome_atacante) /*ON DELETE SET NULL*/
)

CREATE TABLE IF NOT EXISTS instancia_inimigo(
  id INTEGER SERIAL,
  nome_inimigo CHAR(20),

  CONSTRAINT instancia_inimigo_pk PRIMARY KEY(id),
  CONSTRAINT instancia_inimigo_inimigo_fk FOREIGN KEY (nome_inimigo) REFERENCES atacante (nome_atacante) /*ON DELETE SET NULL*/
)


CREATE TABLE IF NOT EXISTS JUTSU(
  nome CHAR(20),
  descricao CHAR(20)
  dano INTEGER,
  chakra_gasto_por_uso INTEGER,
  nome_elemento CHAR(20)

  CONSTRAINT jutsu_pk PRIMARY KEY (nome)
)

CREATE TABLE IF NOT EXISTS ELEMENTO(
  nome INTEGER,
  dano_logo INTEGER,
  dano_agua INTEGER,
  dano_terra INTEGER,
  dano_vento INTEGER,

  CONSTRAINT elemento_pk PRIMARY KEY(nome)
  
)