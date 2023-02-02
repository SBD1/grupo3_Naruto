-- ------------------- Trigger quando o jogador morre -----------------------
CREATE OR REPLACE FUNCTION jogador_morto_func()
RETURNS TRIGGER AS $jogador_morto_func$
DECLARE 
  vida_personagem INTEGER;
BEGIN
  SELECT vida_atual INTO vida_personagem FROM personagem_principal WHERE nome_personagem = NEW.nome_personagem;

  IF vida_personagem <= 0 THEN
    UPDATE batalha 
    SET resultado = 'derrota', 
        finalizada = true 
    WHERE nome_personagem_principal = NEW.nome_personagem 
    AND finalizada = false;

    UPDATE personagem
    SET id_instancia_regiao = 1, 
        nome_regiao = 'Prédio governamental da folha'
    from personagem  p
    	inner join atacante a
    		on p.nome = a.nome_atacante
    	inner join personagem_principal pp
    		on a.nome_atacante = pp.nome_personagem;
  END IF;

  RETURN NEW;
END;
$jogador_morto_func$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER personagem_morreu 
AFTER UPDATE ON personagem_principal 
FOR EACH ROW EXECUTE FUNCTION jogador_morto_func();
-- --------------------------------------------------------------------------

-- ================== Garnte integridade da tabela item =====================
-- -------- Verifica existência do item ao inserir na tabela cura -----------
CREATE OR REPLACE FUNCTION valida_tipo_cura()
RETURNS TRIGGER AS $$
DECLARE
  item_tipo_correto INTEGER;
BEGIN
  SELECT COUNT(*) INTO item_tipo_correto
  FROM item
  WHERE nome = NEW.nome_item;
 
  IF item_tipo_correto = 0 THEN
    RAISE EXCEPTION 'Item ainda não presente na tabela de itens. Por favor insira um item válido na tabela item antes de inserir na tabela cura.';
  ELSE
    IF (SELECT tipo FROM item WHERE nome = NEW.nome_item) != 'cura' THEN
      RAISE EXCEPTION 'Esse item não é do tipo cura';
    END IF;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER valida_tipo_cura
BEFORE INSERT ON cura
FOR EACH ROW
EXECUTE FUNCTION valida_tipo_cura();
-- --------------------------------------------------------------------------

-- -------- Verifica existência do item ao inserir na tabela ataque ---------
CREATE OR REPLACE FUNCTION valida_tipo_ataque()
RETURNS TRIGGER AS $$
DECLARE
  item_tipo_correto INTEGER;
BEGIN
  SELECT COUNT(*) INTO item_tipo_correto
  FROM item
  WHERE nome = NEW.nome_item;
  IF item_tipo_correto = 0 THEN
    RAISE EXCEPTION 'Item ainda não presente na tabela de itens. Por favor insira um item válido na tabela itens antes de inserir na tabela ataque.';
  ELSE
    IF (SELECT tipo FROM item WHERE nome = NEW.nome_item) != 'ataque' THEN
      RAISE EXCEPTION 'Esse item não é do tipo ataque';
    END IF;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER valida_tipo_ataque
BEFORE INSERT ON ataque
FOR EACH ROW
EXECUTE FUNCTION valida_tipo_ataque();
-- --------------------------------------------------------------------------

-- ---------- Verifica existência do item ao inserir na tabela defesa -------
CREATE OR REPLACE FUNCTION valida_tipo_defesa()
RETURNS TRIGGER AS $$
DECLARE
  item_tipo_correto INTEGER;
BEGIN
  SELECT COUNT(*) INTO item_tipo_correto
  FROM item
  WHERE nome = NEW.nome_item;
  IF item_tipo_correto = 0 THEN
    RAISE EXCEPTION 'Item ainda não presente na tabela de itens. Por favor insira um item válido na tabela itens antes de inserir na tabela defesa.';
  ELSE
    IF (SELECT tipo FROM item WHERE nome = NEW.nome_item) != 'defesa' THEN
      RAISE EXCEPTION 'Esse item não é do tipo defesa';
    END IF;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER valida_tipo_defesa
BEFORE INSERT ON defesa
FOR EACH ROW
EXECUTE FUNCTION valida_tipo_defesa();
-- --------------------------------------------------------------------------

-- --------- Verifica existência do item ao inserir na tabela chakra --------
CREATE OR REPLACE FUNCTION valida_tipo_chakra()
RETURNS TRIGGER AS $$
DECLARE
  item_tipo_correto INTEGER;
BEGIN
  SELECT COUNT(*) INTO item_tipo_correto
  FROM item
  WHERE nome = NEW.nome_item;
  IF item_tipo_correto = 0 THEN
    RAISE EXCEPTION 'Item ainda não presente na tabela de itens. Por favor insira um item válido na tabela itens antes de inserir na tabela chakra.';
  ELSE
    IF (SELECT tipo FROM item WHERE nome = NEW.nome_item) != 'chakra' THEN
      RAISE EXCEPTION 'Esse item não é do tipo chakra';
    END IF;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER valida_tipo_chakra
BEFORE INSERT ON chakra
FOR EACH ROW
EXECUTE FUNCTION valida_tipo_chakra();
-- --------------------------------------------------------------------------
-- ==========================================================================

-- ============ Garnte integridade da tabela personagem =====================
-- - Verifica existência do personagem ao inserir na tabela entregador ------
CREATE OR REPLACE FUNCTION valida_tipo_entregador_missao()
RETURNS TRIGGER AS $$
DECLARE
  personagem_tipo_correto INTEGER;
BEGIN
  SELECT COUNT(*) INTO personagem_tipo_correto
  FROM personagem
  WHERE nome = NEW.nome_entregador;

  IF personagem_tipo_correto = 0 THEN
    RAISE EXCEPTION 'Esse personagem ainda não está na tabela personagem';
  ELSE
    IF (SELECT tipo FROM personagem WHERE nome = NEW.nome_entregador) != 'entregador_de_missao' THEN
      RAISE EXCEPTION 'Esse personagem não é do tipo entregador de missão';
    END IF;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER valida_tipo_entregador_missao
BEFORE INSERT ON entregador_missao
FOR EACH ROW
EXECUTE FUNCTION valida_tipo_entregador_missao();
-- --------------------------------------------------------------------------

-- - Verifica existência do personagem ao inserir na tabela atacante ------
CREATE OR REPLACE FUNCTION valida_tipo_atacante()
RETURNS TRIGGER AS $$
DECLARE
  personagem_tipo_correto INTEGER;
BEGIN
  SELECT COUNT(*) INTO personagem_tipo_correto
  FROM personagem
  WHERE nome = NEW.nome_atacante;

  IF personagem_tipo_correto = 0 THEN
    RAISE EXCEPTION 'Esse personagem ainda não está na tabela personagem';
  ELSE
    IF (SELECT tipo FROM personagem WHERE nome = NEW.nome_atacante) != 'atacante' THEN
      RAISE EXCEPTION 'Esse personagem não é do tipo atacante';
    END IF;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER valida_tipo_atacante
BEFORE INSERT ON atacante
FOR EACH ROW
EXECUTE FUNCTION valida_tipo_atacante();
-- --------------------------------------------------------------------------
-- ==========================================================================