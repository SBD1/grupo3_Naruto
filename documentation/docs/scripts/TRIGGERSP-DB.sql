/*CREATE OR REPLACE FUNCTION inimigo_morto_func() RETURNS TRIGGER AS 
$$
DECLARE 
  vida_inimigo INTEGER;
BEGIN

  SELECT vida FROM atacante WHERE nome_atacante = NEW.nome_atacante AND tipo_atacante = "inimigo" AS vida_inimigo
  SELECT vida FROM atacante as a
    INNER JOIN inimigo AS i
      ON i.nome_inimigo = a.nome_atacante
    INNER JOIN instancia_inimigo as ii
      ON ii.nome_inimigo = i.nome_inimigo
    WHERE (ii.nome_inimigo = NEW.nome_inimigo AND ii.id = NEW.id_instancia_inimigo) AS vida_inimigo

  IF vida_inimigo <= 0
    UPDATE batalha SET resultado = "vitoria", finalizada = TRUE
    FROM instancia_inimigo as i
      WHERE (nome_inimigo = i.nome_inimigo AND id_instancia_inimigo = NEW.id_instancia_inimigo)

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER inimigo_morreu AFTER UPDATE ON atacante FOR EACH ROW EXECUTE PROCEDURE inimigo_morto_func();*/

CREATE OR REPLACE FUNCTION jogador_morto_func() RETURNS TRIGGER AS 
$$
DECLARE 
  vida_personagem INTEGER;
BEGIN
  SELECT total_vida FROM personagem_principal WHERE nome_personagem = NEW.nome_personagem AS vida_personagem 

  IF vida_personagem <= 0
    UPDATE batalha SET resultado = "derrota", finalizada = TRUE WHERE nome_personagem_principal = NEW.nome_personagem AND finalizada = FALSE
    
    UPDATE personagem AS p
    SET id_instancia_regiao = "1", nome_regiao = "Regiao padrão" 
    WHERE (p.nome_personagem = NEW.nome_personagem_principal);

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE TRIGGER personagem_morreu AFTER UPDATE ON personagem_principal FOR EACH ROW EXECUTE PROCEDURE jogador_morto_func();