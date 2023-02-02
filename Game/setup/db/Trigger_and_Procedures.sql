\c naruto

CREATE OR REPLACE FUNCTION get_ataque_vida_personagem_do_personagemprincipal_ou_inimigo( _id VARCHAR(40))
  RETURNS VARCHAR(40) AS $$
BEGIN
  RETURN (SELECT (ataque,vida) FROM atacante WHERE nome_atacante=_id);
END;
$$ LANGUAGE plpgsql;

-- Cura e ataque
CREATE OR REPLACE FUNCTION check_item_cura_ataque() RETURNS TRIGGER AS $check_item_cura_ataque$
BEGIN
    PERFORM * FROM cura WHERE nome_item = NEW.nome_item;
    IF FOUND THEN 
		RAISE EXCEPTION 'Este item já se encontra na tabela cura';
    END IF;
    RETURN NEW;

END;
$check_item_cura_ataque$ LANGUAGE plpgsql;

CREATE TRIGGER check_item_cura_ataque
BEFORE UPDATE OR INSERT ON ataque
FOR EACH ROW EXECUTE PROCEDURE check_item_cura_ataque();

-- Cura e defesa
CREATE OR REPLACE FUNCTION check_item_cura_defesa() RETURNS TRIGGER AS $check_item_cura_defesa$
BEGIN
    PERFORM * FROM cura WHERE nome_item = NEW.nome_item;
    IF FOUND THEN 
		RAISE EXCEPTION 'Este item já se encontra na tabela cura';
    END IF;
    RETURN NEW;

END;
$check_item_cura_defesa$ LANGUAGE plpgsql;


CREATE TRIGGER check_item_cura_defesa
BEFORE UPDATE OR INSERT ON defesa
FOR EACH ROW EXECUTE PROCEDURE check_item_cura_defesa();

-- cura e chackra
CREATE OR REPLACE FUNCTION check_item_cura_chakra() RETURNS TRIGGER AS $check_item_cura_chakra$
BEGIN
    PERFORM * FROM cura WHERE nome_item = NEW.nome_item;
    IF FOUND THEN 
		RAISE EXCEPTION 'Este item já se encontra na tabela cura';
    END IF;
    RETURN NEW;

END;
$check_item_cura_chakra$ LANGUAGE plpgsql;


CREATE TRIGGER check_item_cura_chakra
BEFORE UPDATE OR INSERT ON chakra
FOR EACH ROW EXECUTE PROCEDURE check_item_cura_chakra();

-- ataque e cura
CREATE OR REPLACE FUNCTION check_item_ataque_cura() RETURNS TRIGGER AS $check_item_ataque_cura$
BEGIN
    PERFORM * FROM ataque WHERE nome_item = NEW.nome_item;
    IF FOUND THEN 
		RAISE EXCEPTION 'Este item já se encontra na tabela ataque';
    END IF;
    RETURN NEW;

END;
$check_item_ataque_cura$ LANGUAGE plpgsql;


CREATE TRIGGER check_item_ataque_cura
BEFORE UPDATE OR INSERT ON cura
FOR EACH ROW EXECUTE PROCEDURE check_item_ataque_cura();



-- ataque e defesa
CREATE OR REPLACE FUNCTION check_item_ataque_defesa() RETURNS TRIGGER AS $check_item_ataque_defesa$
BEGIN
    PERFORM * FROM ataque WHERE nome_item = NEW.nome_item;
    IF FOUND THEN 
		RAISE EXCEPTION 'Este item já se encontra na tabela ataque';
    END IF;
    RETURN NEW;

END;
$check_item_ataque_defesa$ LANGUAGE plpgsql;


CREATE TRIGGER check_item_ataque_defesa
BEFORE UPDATE OR INSERT ON defesa
FOR EACH ROW EXECUTE PROCEDURE check_item_ataque_defesa();


-- ataque e chakra
CREATE OR REPLACE FUNCTION check_item_ataque_chakra() RETURNS TRIGGER AS $check_item_ataque_chakra$
BEGIN
    PERFORM * FROM ataque WHERE nome_item = NEW.nome_item;
    IF FOUND THEN 
		RAISE EXCEPTION 'Este item já se encontra na tabela ataque';
    END IF;
    RETURN NEW;

END;
$check_item_ataque_chakra$ LANGUAGE plpgsql;


CREATE TRIGGER check_item_ataque_chakra
BEFORE UPDATE OR INSERT ON chakra
FOR EACH ROW EXECUTE PROCEDURE check_item_ataque_chakra();


-- defesa e ataque
CREATE OR REPLACE FUNCTION check_item_defesa_ataque() RETURNS TRIGGER AS $check_item_defesa_ataque$
BEGIN
    PERFORM * FROM defesa WHERE nome_item = NEW.nome_item;
    IF FOUND THEN 
		RAISE EXCEPTION 'Este item já se encontra na tabela defesa';
    END IF;
    RETURN NEW;

END;
$check_item_defesa_ataque$ LANGUAGE plpgsql;


CREATE TRIGGER check_item_defesa_ataque
BEFORE UPDATE OR INSERT ON ataque
FOR EACH ROW EXECUTE PROCEDURE check_item_defesa_ataque();

-- defesa e cura
CREATE OR REPLACE FUNCTION check_item_defesa_cura() RETURNS TRIGGER AS $check_item_defesa_cura$
BEGIN
    PERFORM * FROM defesa WHERE nome_item = NEW.nome_item;
    IF FOUND THEN 
		RAISE EXCEPTION 'Este item já se encontra na tabela defesa';
    END IF;
    RETURN NEW;

END;
$check_item_defesa_cura$ LANGUAGE plpgsql;


CREATE TRIGGER check_item_defesa_cura
BEFORE UPDATE OR INSERT ON cura
FOR EACH ROW EXECUTE PROCEDURE check_item_defesa_cura();

-- defesa e chakra
CREATE OR REPLACE FUNCTION check_item_defesa_chakra() RETURNS TRIGGER AS $check_item_defesa_chakra$
BEGIN
    PERFORM * FROM defesa WHERE nome_item = NEW.nome_item;
    IF FOUND THEN 
		RAISE EXCEPTION 'Este item já se encontra na tabela defesa';
    END IF;
    RETURN NEW;

END;
$check_item_defesa_chakra$ LANGUAGE plpgsql;


CREATE TRIGGER check_item_defesa_chakra
BEFORE UPDATE OR INSERT ON chakra
FOR EACH ROW EXECUTE PROCEDURE check_item_defesa_chakra();
