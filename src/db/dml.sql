/*Get User Stats*/

SELECT nivel, vida, chakra, defesa, ataque FROM atacante;

/* Get User Battles */

SELECT * FROM batalha WHERE nome_personagem_principal = "nome_do_personagem";

/*Update User Position: O sistema deverá ser capaz de atualizar a informação de posição do usuário.*/

UPDATE personagem SET id_instancia_regiao = "id_nova_regiao" WHERE nome = "nome_do_personagem";

/*Update User Chakra: Sistema deve atualizar chakra do usuário (ganho ou perda).*/

UPDATE atacante AS a
SET chakra = 20
FROM personagem_principal AS p
WHERE (a.nome_atacante = p.nome_personagem and e.nome_personagem = "nome_do_personagem");

/*Update User Attack: Sistema deve atualizar ataque do usuário (ganho ou perda).*/

UPDATE atacante AS a
SET ataque = 50
FROM personagem_principal AS p
WHERE (a.nome_atacante = p.nome_personagem and e.nome_personagem = "nome_do_personagem");

/*Update User Life: Sistema deve atualizar vida do usuário (ganho ou perda).*/

UPDATE atacante AS a
SET vida = 5
FROM personagem_principal AS p
WHERE (a.nome_atacante = p.nome_personagem and e.nome_personagem = "nome_do_personagem");

/*Update User Defense: Sistema deve atualizar defesa do usuário (ganho ou perda).*/

UPDATE atacante AS a
SET defesa = 10
FROM personagem_principal AS p
WHERE (a.nome_atacante = p.nome_personagem and e.nome_personagem = "nome_do_personagem");

/*Update User Experience: Sistema deve atualizar quantia de experiência do usuário (ganho ou perda).*/

UPDATE atacante AS a
SET experiencia = 8
FROM personagem_principal AS p
WHERE (a.nome_atacante = p.nome_personagem and e.nome_personagem = "nome_do_personagem");

/*Update User Money: Sistema deve atualizar dinheiro do usuário (ganho ou perda).*/

UPDATE atacante AS a
SET dinheiro = 100
FROM personagem_principal AS p
WHERE (a.nome_atacante = p.nome_personagem and e.nome_personagem = "nome_do_personagem");

/*Get User inventory: O sistema deve trazer lista de todos os itens portados pelo usuário.*/

SELECT * FROM instancia_item AS i
INNER JOIN atacante AS a
  ON i.inventario = a.inventario
INNER JOIN personagem_principal AS p
  ON a.nome_atacante = p.nome_personagem
WHERE nome_personagem = "nome_do_personagem";

/*Reset Enemy Status: O sistema deve atualizar o status do inimigo para o máximo.*/

/*Delete item: Sistema deve excluir item.*/

DELETE FROM instancia_item WHERE id_inventario = "id_inventario";

/*Change item placement: Sistema deve atualizar informação de instância de Item. Observação: O item não pode possuir referência para inventário e para região simultaneamente.*/

/* Caso 1: Removendo item de um local e colocando no inventario */

UPDATE instancia_item SET id_instancia_regiao = NULL, id_inventario = "id_inventario";

/* Caso 2: Removendo item de um inventario e colocando no local */

UPDATE instancia_item SET id_inventario = NULL, id_instancia_regiao = "id_instancia_regiao";

/*Get Enemy Inventory: Sistema deve trazer lista de itens portados pelo inimigo.*/

/*Update Enemy Position: O sistema deverá ser capaz de atualizar a informação de posição do usuário.*/

/*Update Enemy Chakra: Sistema deve atualizar chakra do inimigo (ganho ou perda).*/

UPDATE atacante AS a
SET chakra = 20
FROM inimigo AS e
WHERE (a.nome_atacante = e.nome_inimigo and e.nome_inimgio = "nome_do_inimigo");

/*Update Enemy Attack: Sistema deve atualizar ataque do inimigo (ganho ou perda).*/

UPDATE atacante AS a
SET ataque = 20
FROM inimigo AS e
WHERE (a.nome_atacante = e.nome_inimigo and e.nome_inimgio = "nome_do_inimigo");

/*Update Enemy Life: Sistema deve atualizar vida do inimigo (ganho ou perda).*/

UPDATE atacante AS a
SET vida = 5
FROM inimigo AS e
WHERE (a.nome_atacante = e.nome_inimigo and e.nome_inimgio = "nome_do_inimigo");

/*Update Enemy Defense: Sistema deve atualizar defesa do inimigo (ganho ou perda).*/

UPDATE atacante AS a
SET defesa = 100
FROM inimigo AS e
WHERE (a.nome_atacante = e.nome_inimigo and e.nome_inimgio = "nome_do_inimigo");

/*Add Item to Inventory: Adicionar item ao inventário do usuário. Em caso de itens de mesmo nome com ids diferentes, deve-se somar a quantidade de ambos e sobrescrever esse dado em uma das instâncias, a outra instância por sua vez deve ser deletada.*/

/*Get Item Information: Informa sobre as informações de um item.*/

SELECT * FROM item WHERE nome_item = "nome_do_item";

/*Get Mission List: A partir de um entregador de missão deve ser possível listar todas as missões ativas*/

SELECT * FROM instancia_missao WHERE nome_entregador = "nome_do_entregrador"; 

/*Assign Mission: Sistema deve criar nova instância da missão e inserir o nome do personagem como chave primária.*/

INSERT INTO instancia_missao (titulo_missao, nome_entregador, nome_personagem, is_done) VALUES ('titulo_da_missão', 'nome_do_entregador', 'nome_do_personagem', FALSE);

/*Finish Mission: Sistema deve atualizar campo is_done de missão para true.*/

UPDATE instancia_missao SET is_done = TRUE;

/*Get Store Item List: Sistema deve apresentar lista de itens que estão em uma loja*/

SELECT * FROM instancia_item WHERE nome_loja = "nome_da_loja";

/*Get User Transaction History: O sistema deve listar todas as transações efetuadas em lojas.*/

SELECT * FROM venda WHERE 

/*Get User Transaction History By Store: Sistema deve com base no id da loja, apontar quais transações o usuário fez naquela loja.*/

SELECT * FROM venda AS v
INNER JOIN instancia_item AS it
  ON it.id = v.id_instancia_de_item
INNER JOIN inventario AS inv
  ON inv.id = it.id_inventario
INNER JOIN atacante AS a
  ON a.id_inventario = inv.id
INNER JOIN personagem_principal AS p
  ON a.nome_atacante = p.nome_personagem
WHERE (nome_personagem = "nome_do_personagem");

/*Get User Total Transaction: Sistema deve trazer valor inteiro de quanto dinheiro o usuário já gastou.*/

/*Buy item:*/

/* 1. Atualizando dinheiro do personagem 
  O personagem tinha 50 de dinheiro e comprou itens e o total foi 20
*/

UPDATE personagem_principal SET dinheiro = 30 WHERE nome_personagem = "nome_do_personagem";

/* 2. Adicionar item ao inventario do personagem 
*/

UPDATE instancia_item AS i
SET inventario = a.id_inventario 
FROM atacante AS a
INNER JOIN personagem_principal as p
  ON p.nome_personagem = a.nome_atacante
WHERE (p.nome_personagem = "nome_do_personagem");

/*Check Mob Colision: A partir da instância de um inimigo, o sistema deve verificar se é do tipo boss. Caso for, ele deve verificar essa instância e analisar na lista de batalhas do usuário, caso tenha uma batalha contra essa instância e ele tenha ganhado, sistema deverá retornar false. Do contrário deverá retornar true.*/

/*Generate Mob: A partir de uma lista de regiões e do tipo de inimigo a ser gerado sistema deverá gerar instância de inimigos.*/ 

/*Kill/ Delete Mob: O sistema deve remover a instância de inimigos.*/

DELETE FROM instancia_inimigo WHERE id = "id_da_instancia_inimigo";

/*Reset User Position: O sistema deve reiniciar posição do usuário no início do jogo quando ele morrer ou quando o sistema não conseguir definir a posição do usuário.*/