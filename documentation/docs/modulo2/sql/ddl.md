# Data Definition Language (DDL)

## Introdução

Este documento tem como objetivo mostrar os esquemas definidos nesta primeira etapa do desenvolvimento através da DDL (Data Definition Language) em SQL.

## O que é DDL

DDL ou Data Definition Language, é uma linguagem utilizada para especificar os esquemas de bancos de dados através de um conjunto de definições. O DDL fornece comandos para que seja possível criar, alterar e remover estruturas de dados.

## Comandos utilizados

Nesse primeiro momento utilizamos apenas o comando `CREATE` utilizado para criar bancos de dados, tabelas, store procedures e etc. Utilizando o comando `CREATE`, criamos primeiramente o nosso banco de dados com o nome **"naruto"**, criamos também alguns tipos customizados (`TYPE`) para facilitar a padronização de alguns dados, como por exemplo: tipos de personagem, tipos de item e etc, e criamos também as tabelas que serão utilizadas em nosso jogo.

## Script

A seguir mostraremos o script que utilizamos para definirmos a primeira versão do nosso banco de dados.

```

CREATE DATABASE naruto;

CREATE TYPE tipo_personagem as enum ('atacante', 'entregador_de_missao');
CREATE TYPE tipo_item as enum ('cura', 'ataque', 'defesa', 'chakra');
CREATE TYPE tipo_missao as enum ('primaria', 'secundaria', 'treinamentor');

CREATE TABLE IF NOT EXISTS mapa(
  nome CHAR(20),
  descricao VARCHAR(100),

  CONSTRAINT mapa_fk PRIMARY KEY(nome)
);

CREATE TABLE IF NOT EXISTS regiao(
  nome CHAR(20),
  descricao VARCHAR(100),
  nome_mapa CHAR(20) NOT NULL,

  CONSTRAINT regiao_pk PRIMARY KEY(nome),
  CONSTRAINT regiao_mapa_fk FOREIGN KEY (nome_mapa) REFERENCES mapa (nome)
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

  CONSTRAINT cura_pk PRIMARY KEY(nome_item),
  CONSTRAINT cura_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT quantidade_cura_ck CHECK((quantidade >= 0) AND (quantidade <= 100))
);

CREATE TABLE IF NOT EXISTS ataque(
  nome_item CHAR(20),
  dano SMALLINT,

  CONSTRAINT ataque_pk PRIMARY KEY(nome_item),
  CONSTRAINT ataque_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT quantidade_ataque_ck CHECK((dano >= 0) AND (dano <= 100))
);

CREATE TABLE IF NOT EXISTS defesa(
  nome_item CHAR(20),
  incremento SMALLINT,

  CONSTRAINT defesa_pk PRIMARY key (nome_item),
  CONSTRAINT defesa_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT quantidade_defesa_ck check ((incremento >= 0) AND (incremento <= 100))
);

CREATE TABLE IF NOT EXISTS chakra(
  nome_item CHAR(20),
  ganho SMALLINT,

  CONSTRAINT chakra_pk PRIMARY KEY(nome_item),
  CONSTRAINT chakra_item_fk FOREIGN KEY (nome_item) REFERENCES item (nome),
  CONSTRAINT quantidade_chakra_ck CHECK((ganho >= 0) AND (ganho <= 100))
);

CREATE TABLE IF NOT EXISTS personagem(
  nome CHAR(20),
  nome_regiao CHAR(20) NOT NULL,
  tipo tipo_personagem,

  CONSTRAINT personagem_pk PRIMARY KEY(nome),
  CONSTRAINT personagem_regiao_fk FOREIGN KEY (nome_regiao) REFERENCES regiao (nome)
)

CREATE TABLE IF NOT EXISTS atacante(
  nome_atacante CHAR(20),
  nivel INTEGER,
  vida INTEGER,
  chakra INTEGER,
  defesa INTEGER,
  ataque INTEGER,

  CONSTRAINT atacante_pk PRIMARY KEY(nome_atacante),
  CONSTRAINT atacante_personagem_fk FOREIGN KEY (nome_atacante) REFERENCES personagem (nome) 
);

CREATE TABLE IF NOT EXISTS entregador_missao(
  nome_entregador CHAR(20),

  CONSTRAINT entregador_pk PRIMARY KEY(nome_entregador),
  CONSTRAINT entregador_personagem_fk FOREIGN KEY (nome_entregador) REFERENCES personagem (nome) 
);

CREATE TABLE IF NOT EXISTS inventario(
  id SERIAL,
  nome_atacante CHAR(20) NOT NULL,

  CONSTRAINT inventario_pk PRIMARY KEY(id),
  CONSTRAINT inventario_atacante_fk FOREIGN KEY (nome_atacante) REFERENCES atacante (nome_atacante)
);

CREATE TABLE IF NOT EXISTS instancia_item(
  id SERIAL,
  nome_item CHAR(20),
  quantidade INTEGER,
  id_inventario INTEGER,
  nome_regiao CHAR(20),

  CONSTRAINT instancia_item_pk PRIMARY KEY(id, nome_item),
  CONSTRAINT instancia_item_inventario_fk FOREIGN KEY (id_inventario) REFERENCES inventario (id),
  CONSTRAINT instancia_item_regiao_fk FOREIGN KEY (nome_regiao) REFERENCES regiao (nome)
);

CREATE TABLE IF NOT EXISTS loja(
  nome CHAR(20),
  taxa INTEGER,
  nome_regiao CHAR(20),

  CONSTRAINT loja_pk PRIMARY KEY(nome),
  CONSTRAINT loja_regiao_fk FOREIGN KEY (nome_regiao) REFERENCES regiao (nome)
);

CREATE TABLE IF NOT EXISTS venda(
  id SERIAL,
  id_instancia_item INTEGER NOT NULL,
  nome_item CHAR(20) NOT NULL,
  nome_loja CHAR(20) NOT NULL,

  CONSTRAINT venda_pk PRIMARY KEY(id),
  CONSTRAINT venda_instancia_item_fk FOREIGN KEY (id_instancia_item, nome_item) REFERENCES instancia_item (id, nome_item),
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
  CONSTRAINT inimigo_atacante_fk FOREIGN KEY (nome_inimigo) REFERENCES atacante (nome_atacante)
)

CREATE TABLE IF NOT EXISTS instancia_inimigo(
  id SERIAL,
  nome_inimigo CHAR(20),

  CONSTRAINT instancia_inimigo_pk PRIMARY KEY(id, nome_inimigo),
  CONSTRAINT instancia_inimigo_inimigo_fk FOREIGN KEY (nome_inimigo) REFERENCES inimigo (nome_inimigo)
)

CREATE TABLE IF NOT EXISTS batalha(
  id SERIAL,
  nome_personagem_principal CHAR(20),
  nome_inimigo CHAR(20),
  id_instancia_inimigo INTEGER,

  CONSTRAINT batalha_pk PRIMARY KEY(id),
  CONSTRAINT batalha_personagem_principal_fk FOREIGN KEY (nome_personagem_principal) REFERENCES personagem_principal (nome_personagem),
  CONSTRAINT batalha_nome_inimigo_fk FOREIGN KEY (nome_inimigo, id_instancia_inimigo) REFERENCES instancia_inimigo (nome_inimigo, id)
)

CREATE TABLE IF NOT EXISTS elemento(
  nome VARCHAR(20),
  dano_fogo INTEGER,
  dano_agua INTEGER,
  dano_terra INTEGER,
  dano_vento INTEGER,

  CONSTRAINT elemento_pk PRIMARY KEY(nome)
)

CREATE TABLE IF NOT EXISTS jutsu(
  nome CHAR(20),
  descricao CHAR(50),
  dano INTEGER,
  chakra_gasto_por_uso INTEGER,
  nome_elemento CHAR(20),

  CONSTRAINT jutsu_pk PRIMARY KEY (nome),
  CONSTRAINT jutsu_elemento_fk FOREIGN KEY (nome_elemento) REFERENCES elemento (nome)
)

CREATE TABLE IF NOT EXISTS sabe_jutsu(
  id SERIAL,
  nome_jutsu CHAR(20),
  nome_atacante CHAR(20),

  CONSTRAINT sabe_jutsu_pk PRIMARY KEY (id),
  CONSTRAINT sabe_jutsu_jutsu_fk FOREIGN KEY (nome_jutsu) REFERENCES jutsu (nome),
  CONSTRAINT jutsu_atacante_fk FOREIGN KEY (nome_atacante) REFERENCES atacante (nome_atacante)
)

CREATE TABLE IF NOT EXISTS missao(
  titulo CHAR(20),
  tipo tipo_missao,

  CONSTRAINT missao_pk PRIMARY KEY (titulo)
)

CREATE TABLE IF NOT EXISTS primaria(
  titulo_missao CHAR(20),
  descricao VARCHAR(50),
  experiencia_ganha INTEGER,
  nivel_necessario INTEGER,
  id_instancia_inimigo INTEGER,
  nome_inimigo CHAR(20),


  CONSTRAINT primaria_missao_pk PRIMARY KEY (titulo_missao),
  CONSTRAINT primaria_titulo_missao_fk FOREIGN KEY (titulo_missao) REFERENCES missao (titulo),
  CONSTRAINT primaria_instancia_inimigo_fk FOREIGN KEY (id_instancia_inimigo, nome_inimigo) REFERENCES instancia_inimigo (id, nome_inimigo)
)

CREATE TABLE IF NOT EXISTS secundaria(
  titulo_missao CHAR(20),
  descricao CHAR(50),
  experiencia_ganha INTEGER,
  nivel_necessario INTEGER,
  id_instancia_item INTEGER,
  nome_item CHAR(20),


  CONSTRAINT secundaria_pk PRIMARY KEY (titulo_missao),
  CONSTRAINT secundaria_titulo_missao_fk FOREIGN KEY (titulo_missao) REFERENCES missao (titulo),
  CONSTRAINT secundaria_instancia_item_fk FOREIGN KEY (id_instancia_item, nome_item) REFERENCES instancia_item (id, nome_item)
)

CREATE TABLE IF NOT EXISTS treinamento(
  titulo_missao CHAR(20),
  descricao CHAR(50),
  experiencia_ganha INTEGER,
  nivel_necessario INTEGER,
  id_instancia_item INTEGER,
  nome_item CHAR(20),
  incremento INTEGER,
  tempo_requerido INTEGER,
  chance_sucesso INTEGER,
  cooldown INTEGER,
  nome_personagem CHAR(20),

  CONSTRAINT treinamento_pk PRIMARY KEY (titulo_missao),
  CONSTRAINT treinamento_titulo_missao_fk FOREIGN KEY (titulo_missao) REFERENCES missao (titulo),
  CONSTRAINT treinamento_nome_personagem_fk FOREIGN KEY (nome_personagem) REFERENCES personagem_principal (nome_personagem)
)


CREATE TABLE IF NOT EXISTS instancia_missao(
  id SERIAL,
  titulo_missao CHAR(20),
  nome_entregador CHAR(20),
  nome_personagem CHAR(20),

  CONSTRAINT instancia_missao_pk PRIMARY KEY (id),
  CONSTRAINT instancia_missao_titulo_missao_fk FOREIGN KEY (titulo_missao) REFERENCES missao (titulo),
  CONSTRAINT instancia_missao_nome_personagem_fk FOREIGN KEY (nome_personagem) REFERENCES personagem_principal (nome_personagem)
)

```

Este script pode ser acessado também através deste link: <a href="../scripts/DDL-BD.sql" download="DDL-BD.sql">DML</a>.

## Histórico de versões

|    Data    | Versão |             Descrição              |        Autor         |
| :--------: | :----: | :--------------------------------: | :------------------: |
| 26/12/2022 | `0.9`  |    Criação da versão 1.0 do script do DDL    | [Maciel Júnior](https://github.com/macieljuniormax), [Eliseu Kadesh](https://github.com/eliseukadesh67), [Caio Vitor](https://github.com/caiozim112) |
| 04/01/2023 | `1.0`  | Abertura do documento (DDL) | [Eliseu Kadesh](https://github.com/eliseukadesh67) |