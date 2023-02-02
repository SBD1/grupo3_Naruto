-- View dos dados do personagem principal

\c naruto

CREATE OR REPLACE VIEW dados_personagem AS
    SELECT personagem.nome AS "Nome Personagem",
    personagem_principal.dinheiro AS "Dinheiro",
    personagem_principal.experiencia AS "Experiência",
    personagem_principal.descricao AS "Descrição",
    atacante.nivel AS "Nível",
    atacante.vida AS "Vida",
    atacante.chakra AS "Chakra",
    atacante.defesa AS "Defesa",
    atacante.ataque AS "Ataque",
    atacante.tipo AS "Tipo Atacante",
    personagem.nome_regiao AS "Nome Região"
    FROM personagem
    INNER JOIN atacante ON (personagem.nome = atacante.nome_atacante)
    INNER JOIN personagem_principal ON (personagem.nome = personagem_principal.nome_personagem);

SELECT * FROM dados_personagem;

-- View dos dados completos do inimigo
CREATE OR REPLACE VIEW dados_inimigo AS
    SELECT personagem.nome AS "Nome Personagem",
    atacante.nivel AS "Nível",
    atacante.vida AS "Vida",
    atacante.chakra AS "Chakra",
    atacante.defesa AS "Defesa",
    atacante.ataque AS "Ataque",
    atacante.tipo AS "Tipo Atacante",
    personagem.nome_regiao AS "Nome Região",
    instancia_inimigo.id AS "ID Instância Inimigo",
    inimigo.e_boss AS "É Boss",
    inimigo.dialogo_encontro AS "Diálogo Encontro",
    inimigo.dialogo_vitoria AS "Diálogo Vitória",
    inimigo.dialogo_derrota AS "Diálogo Derrota",
    inimigo.experiencia_concedida AS "Experiência Concedida"
    FROM personagem
    INNER JOIN atacante ON personagem.nome = atacante.nome_atacante
    INNER JOIN inimigo ON atacante.nome_atacante = inimigo.nome_inimigo
    INNER JOIN instancia_inimigo ON inimigo.nome_inimigo = instancia_inimigo.nome_inimigo;

SELECT * FROM dados_inimigo;

-- View dos dados completos de itens
CREATE OR REPLACE VIEW dados_item AS
    SELECT item.nome AS "Nome Item",
    item.descricao AS "Descrição Item",
    item.desaparece AS "Desaparece",
    item.tipo AS "Tipo Item",
    instancia_item.quantidade AS "Quantidade",
    instancia_item.nome_regiao AS "Nome Região",
    instancia_item.nome_loja AS "Nome Loja"
    FROM item
    INNER JOIN instancia_item ON item.nome = instancia_item.nome_item;

SELECT * FROM dados_item;

-- View sobre informações de batalha
CREATE OR REPLACE VIEW dados_batalha AS
    SELECT batalha.id AS "ID Batalha",
    batalha.tempo_decorrido AS "Tempo Decorrido",
    batalha.resultado AS "Resultado",
    batalha.nome_personagem_principal AS "Nome Personagem Principal",
    batalha.nome_inimigo AS "Nome Inimigo",
    batalha.id_instancia_inimigo AS "ID Instância Inimigo"
    FROM batalha;

SELECT * FROM dados_batalha;