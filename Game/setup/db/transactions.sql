
-- -- Transaction Criar novo Jogador

-- CREATE OR REPLACE PROCEDURE criar_jogador(_nome_jogador nome)
-- AS $criar_novo_jogador$
--   DECLARE
--   my_variable INTEGER;
-- BEGIN
--   INSERT INTO personagem (nome,id_instancia_regiao,nome_regiao,tipo) VALUES(_nome_jogador,'2','Prédio governamental da folha','atacante');
--   INSERT INTO inventario DEFAULT VALUES;
--   SELECT MAX(id) INTO my_variable FROM inventario;
-- INSERT INTO atacante (nome_atacante,nivel,vida,chakra,defesa,ataque,id_inventario,tipo) VALUES(_nome_jogador, 30, 100, 90, 50, 80, my_variable, 'personagem_principal');
-- INSERT INTO personagem_principal(nome_personagem,dinheiro,experiencia,descricao) VALUES(_nome_jogador,0,0,'personagem jogavel');
-- END;
-- $$ LANGUAGE plpgsql;


-- CREATE OR REPLACE FUNCTION criar_novo_jogador(_nome_jogador nome)
-- AS $$
--     RETURN (
--     BEGIN;
--     CALL criar_novo_jogador(_nome_jogador);
--     COMMIT;
--     );