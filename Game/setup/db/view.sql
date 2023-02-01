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