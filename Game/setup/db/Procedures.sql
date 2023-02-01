\c naruto

CREATE OR REPLACE FUNCTION get_ataque_vida_personagem_do_personagemprincipal_ou_inimigo( _id VARCHAR(40))
  RETURNS VARCHAR(40) AS $$
BEGIN
  RETURN (SELECT (ataque,vida) FROM atacante WHERE nome_atacante=_id);
END;
$$ LANGUAGE plpgsql;