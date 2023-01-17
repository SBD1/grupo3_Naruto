# Data Manipulation Language (DML)

## Introdução

Este documento tem como objetivo mostrar as possiveis consultas e manipulações que seram realizadas no nosso banco de dados durante o nosso desenvolvimento através da DML (Data Manipulation Language) em SQL.

## O que é DML

DML ou Data Manipulation Language, é uma linguagem utilizada para accessar ou manipular o banco de dados através de um conjunto de comandos.

## Comandos utilizados

Neste primeiro momento utilizamos os comandos `SELECT`, `UPDATE`, `DELETE` e `INSERT`.

## Possiveis consultas e manipulações

A seguir mostraremos o script que utilizamos para definirmos as possíveis consultas durante o desenvolvimento do nosso projeto. PS: Criamos neste scripts alguns exemplos de nomes de personagens e inimigos apenas para exemplificação.

```
/*Get User Stats*/

SELECT nivel, vida, chakra, defesa, ataque FROM atacante;

/* Get User Battles */

SELECT * FROM batalha WHERE nome_personagem_principal = 'naruto_username';

/*Update User Position: O sistema deverá ser capaz de atualizar a informação de posição do usuário.*/

UPDATE personagem SET id_instancia_regiao = 'id_nova_regiao' WHERE nome = 'naruto_username';

/*Update User Chakra: Sistema deve atualizar chakra do usuário (ganho ou perda).*/

UPDATE atacante AS a
SET chakra = 20
FROM personagem_principal AS p
WHERE (a.nome_atacante = p.nome_personagem and e.nome_personagem = 'naruto_username');

/*Update User Attack: Sistema deve atualizar ataque do usuário (ganho ou perda).*/

UPDATE atacante AS a
SET ataque = 50
FROM personagem_principal AS p
WHERE (a.nome_atacante = p.nome_personagem and e.nome_personagem = 'naruto_username');

/*Update User Life: Sistema deve atualizar vida do usuário (ganho ou perda).*/

UPDATE atacante AS a
SET vida = 5
FROM personagem_principal AS p
WHERE (a.nome_atacante = p.nome_personagem and e.nome_personagem = 'naruto_username');

/*Update User Defense: Sistema deve atualizar defesa do usuário (ganho ou perda).*/

UPDATE atacante AS a
SET defesa = 10
FROM personagem_principal AS p
WHERE (a.nome_atacante = p.nome_personagem and e.nome_personagem = 'naruto_username');

/*Update User Experience: Sistema deve atualizar quantia de experiência do usuário (ganho ou perda).*/

UPDATE atacante AS a
SET experiencia = 8
FROM personagem_principal AS p
WHERE (a.nome_atacante = p.nome_personagem and e.nome_personagem = 'naruto_username');

/*Update User Money: Sistema deve atualizar dinheiro do usuário (ganho ou perda).*/

UPDATE atacante AS a
SET dinheiro = 100
FROM personagem_principal AS p
WHERE (a.nome_atacante = p.nome_personagem and e.nome_personagem = 'naruto_username');

/*Get User inventory: O sistema deve trazer lista de todos os itens portados pelo usuário.*/

SELECT i.nome_item, i.quantidade, d.incremento AS defesa, c.quantidade AS cura, atq.dano FROM instancia_item AS i
INNER JOIN atacante AS a
  ON a.nome_atacante = 'naruto_username'
  AND a.id_inventario = i.id_inventario
LEFT JOIN cura as c
  ON c.nome_item = i.nome_item
LEFT JOIN ataque as atq
  ON atq.nome_item = i.nome_item
LEFT JOIN defesa as d
  ON d.nome_item = i.nome_item;

/*Reset Enemy Status: O sistema deve atualizar o status do inimigo para o máximo.*/

UPDATE atacante AS a 
  SET 
    vida = 100,
    chakra = 100,
    defesa = 100,
    ataque = 100
FROM inimigo AS e
WHERE (a.nome_atacante = e.nome_inimigo and e.nome_inimigo = 'Itachi');

/*Delete item: Sistema deve excluir item.*/

DELETE FROM instancia_item WHERE id_inventario = 'id_inventario';

/*Change item placement: Sistema deve atualizar informação de instância de Item. Observação: O item não pode possuir referência para inventário e para região simultaneamente.*/

/* Caso 1: Removendo item de um local e colocando no inventario */

UPDATE instancia_item SET id_instancia_regiao = NULL, id_inventario = 'id_inventario';

/* Caso 2: Removendo item de um inventario e colocando no local */

UPDATE instancia_item SET id_inventario = NULL, id_instancia_regiao = 'id_instancia_regiao';

/*Get Enemy Inventory: Sistema deve trazer lista de itens portados pelo inimigo.*/

/*Update Enemy Position: O sistema deverá ser capaz de atualizar a informação de posição do usuário.*/

/*Update Enemy Chakra: Sistema deve atualizar chakra do inimigo (ganho ou perda).*/

UPDATE atacante AS a
SET chakra = 20
FROM inimigo AS e
WHERE (a.nome_atacante = e.nome_inimigo and e.nome_inimgio = 'Itachi');

/*Update Enemy Attack: Sistema deve atualizar ataque do inimigo (ganho ou perda).*/

UPDATE atacante AS a
SET ataque = 20
FROM inimigo AS e
WHERE (a.nome_atacante = e.nome_inimigo and e.nome_inimgio = 'Itachi');

/*Update Enemy Life: Sistema deve atualizar vida do inimigo (ganho ou perda).*/

UPDATE atacante AS a
SET vida = 5
FROM inimigo AS e
WHERE (a.nome_atacante = e.nome_inimigo and e.nome_inimgio = 'Itachi');

/*Update Enemy Defense: Sistema deve atualizar defesa do inimigo (ganho ou perda).*/

UPDATE atacante AS a
SET defesa = 100
FROM inimigo AS e
WHERE (a.nome_atacante = e.nome_inimigo and e.nome_inimgio = 'Itachi');

/*Add Item to Inventory: Adicionar item ao inventário do usuário. Em caso de itens de mesmo nome com ids diferentes, deve-se somar a quantidade de ambos e sobrescrever esse dado em uma das instâncias, a outra instância por sua vez deve ser deletada.*/

/*Get Item Information: Informa sobre as informações de um item.*/

SELECT * FROM item WHERE nome_item = 'nome_do_item';

/*Get Mission List: A partir de um entregador de missão deve ser possível listar todas as missões ativas*/

SELECT * FROM instancia_missao WHERE nome_entregador = 'nome_do_entregrador'; 

/*Assign Mission: Sistema deve criar nova instância da missão e inserir o nome do personagem como chave primária.*/

INSERT INTO instancia_missao (titulo_missao, nome_entregador, nome_personagem, is_done) VALUES ('titulo_da_missão', 'Tsunade', 'naruto_username', FALSE);

/*Finish Mission: Sistema deve atualizar campo is_done de missão para true.*/

UPDATE instancia_missao SET is_done = TRUE;

/*Get Store Item List: Sistema deve apresentar lista de itens que estão em uma loja*/

SELECT * FROM instancia_item WHERE nome_loja = 'Loja 1';

/*Get User Transaction History: O sistema deve listar todas as transações efetuadas em lojas.*/

SELECT * FROM venda WHERE 

/*Get User Transaction History By Store: Sistema deve com base no id da loja, apontar quais transações o usuário fez naquela loja.*/

SELECT v.nome_loja, v.nome_item, it.quantidade, v.valor_compra FROM venda AS v
INNER JOIN instancia_item AS it
  ON it.id = v.id_instancia_item
INNER JOIN inventario AS inv
  ON inv.id = it.id_inventario
INNER JOIN atacante AS a
  ON a.id_inventario = inv.id
INNER JOIN personagem_principal AS p
  ON a.nome_atacante = p.nome_personagem
WHERE (nome_personagem = 'naruto_username');

/*Get User Total Transaction: Sistema deve trazer valor inteiro de quanto dinheiro o usuário já gastou.*/

SELECT SUM(v.valor_compra) AS total FROM venda AS v
INNER JOIN instancia_item AS it
  ON it.id = v.id_instancia_item
INNER JOIN inventario AS inv
  ON inv.id = it.id_inventario
INNER JOIN atacante AS a
  ON a.id_inventario = inv.id
INNER JOIN personagem_principal AS p
  ON a.nome_atacante = p.nome_personagem
WHERE (nome_personagem = 'naruto_username');

/*Buy item:*/

/* 
  1. Atualizando dinheiro do personagem 
  O personagem tinha 50 de dinheiro e comprou itens e o total foi 20
*/

UPDATE personagem_principal SET dinheiro = 30 WHERE nome_personagem = 'naruto_username';

/* 
  2. Adicionar item ao inventario do personagem 
*/

UPDATE instancia_item AS i
SET inventario = a.id_inventario 
FROM atacante AS a
INNER JOIN personagem_principal as p
  ON p.nome_personagem = a.nome_atacante
WHERE (p.nome_personagem = 'naruto_username');

/*Kill/ Delete Mob: O sistema deve remover a instância de inimigos.*/

DELETE FROM instancia_inimigo WHERE id = 'id_da_instancia_inimigo';

```

Este script pode ser acessado também através deste link: <a href="../scripts/DML-BD.sql" download="DML-BD.sql">DML</a>.

## Exemplos de inserções

A seguir mostraremos o script que utilizamos para inserir alguns dados que serão utilizados durante o game.

```
/*Conectando com o banco naruto*/

\c naruto;

/* Missão */

INSERT INTO missao (titulo, tipo) VALUES ('Derrote Sasori', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Derrote Deidara', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Derrote Hidan', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Derrote Kakuzu', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Derrote Konan', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Derrote Pain', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Derrote Kisame', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Derrote Itachi', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Derrote Tobi', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Treinamento de Chackra I', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Treinamento de Força I', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Treinamento de Resistência I', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Treinamento de Vida I', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Treinamento de Chackra II', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Treinamento de Força II', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Treinamento de Resistência II', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Treinamento de Vida II', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Treinamento de Chackra III', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Treinamento de Força III', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Treinamento de Resistência III', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Treinamento de Vida III', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Transporte pergaminho de invocação ao Monte Myõboku', 'secundaria');
INSERT INTO missao (titulo, tipo) VALUES ('Adquira o pergaminho de jutsu Edo Tensei', 'secundaria');
INSERT INTO missao (titulo, tipo) VALUES ('Tutorial 1 - Converse com kakashi', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Tutorial 2 - Compre uma shuriken na loja', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Tutorial 3 - Encontre uma maçã', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Tutorial 4 - Coma a maçã', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Tutorial 5 - Converse com a Hokage', 'primaria');
INSERT INTO missao (titulo, tipo) VALUES ('Adquirir o rasengan', 'secundaria');
INSERT INTO missao (titulo, tipo) VALUES ('Aprenda o modo sábio', 'secundaria');
INSERT INTO missao (titulo, tipo) VALUES ('Adquira o pergaminho de invocação de cobra', 'secundaria');
INSERT INTO missao (titulo, tipo) VALUES ('Adquira o selo Byakugou', 'secundaria');
INSERT INTO missao (titulo, tipo) VALUES ('Fortalecimento selo Byakugou', 'treinamento');
INSERT INTO missao (titulo, tipo) VALUES ('Aprenda a andar sobre paredes', 'secundaria');
INSERT INTO missao (titulo, tipo) VALUES ('Aprender a andar sobre água principal', 'secundaria');
INSERT INTO missao (titulo, tipo) VALUES ('Cure a vila doente', 'secundaria');
INSERT INTO missao (titulo, tipo) VALUES ('Deixa o futuro continuar', 'secundaria');

/* Jutsu */

INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Jutsu de Substituição', 'Técnica ninja básica, onde em perigo o ninja troca sua posição com algum item, não se machucando', 10, 5); 
INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Sombra da Folha Dançante', 'Crie três clones da sombra e distraia o inimigo para conseguir chutá-lo ao ar', 10, 5);
INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Técnica de Invocação: Sapos', 'Você conseguiu ser reconhecido pelo Monte Myõboku. Agora pode invocar o Gamabunta (sapo chefe) para te ajudar em batalhas', 10, 5);
INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Técnica de Invocação: Cobras', 'Você conseguiu ser reconhecido pela Caverna Ryuchi. Agora você pode Manda (chefe das cobras) para te ajudar em batalhas.', 10, 5);
INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Rasengan', 'Técnica de Rank A inventada pelo Quarto Hokage (Minato), que a criou com base na formação da bola da besta com cauda. Manipulação de chakra puro em forma de uma espiral de chakra.', 10, 5);
INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Jutsu Bola de Fogo', 'Usuário amassa seu chakra dentro do corpo e o converta em natureza de fogo e, em seguida, o expulsa da boca.', 10, 5);
INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Chidori', 'Técnica canaliza uma grande quantidade de chakra de Liberação de Relâmpago na mão do usuário. A quantidade de chakra é tão grande que se torna visível. A alta concentração de energia elétrica produz um som que lembra muitos pássaros cantando, daí o nome. Uma vez que a técnica é completada, o usuário carrega para frente e empurra o Chidori no alvo.', 10, 5);
INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Transmissão Relâmpago', 'Usando o auxílio de um clone, cada um realiza a técnica Corte Relâmpago em mãos opostas. Conectando as suas técnicas em conjunto, eles formam uma corrente de relâmpagos entre si que é capaz de cortar através de objetos como braços de chakra de bestas com cauda com grande facilidade.', 10, 5);
INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Hirudora', 'Técnica que utiliza a pressão do ar criada por sua força e velocidade para criar um ataque devastador em formato de Tigre.', 10, 5);
INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Modo sábio', 'Modo Sábio é um estado mental alcançado ao misturar perfeitamente a Energia Natural presente em todas as coisas, com o chakra espiritual e físico de cada pessoa, gerando assim o que é conhecido como o Chakra do Senjutsu e permitindo que o ninja acesse o Modo Sábio.  Ao entrar nesse modo, o usuário ganha upgrades em todos os seus atributos, melhorando a sua força, agilidade, reflexos, resistência e até o poder dos seus jutsus.', 10, 5);
INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Andar sobre parede', 'Jutsu sem aplicação para suas futura batalhas. Aonde será possível usar o jutsu de subir paredes (algumas árvores podem ser interpretadas como paredes).', 10, 5);
INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Andar sobre a água', 'Você conhece seu corpo e conhece controlar o chakra com maior precisão. Dessa forma, consegue passar por regiões onde antes não conseguia acessar (essa técnica não causa dano em inimigos).', 10, 5);

/* Regioes */

INSERT INTO regiao (nome, descricao) VALUES ('Monumento dos hokages', 'Montanha que tem tido os rostos de todos os Hokage esculpidas na pedra. Foi imaginado por Hashirama Senju como um símbolo de que os Hokage sempre zelarão pela aldeia. Para subir o monumento você precisar saber a subir paredes. Use o jutsu e aprecie a vista do topo da vila, quem sabe quais surpresas terão lá em cima.');
INSERT INTO regiao (nome, descricao) VALUES ('Prédio governamental da folha', 'Prédio onde o hokage está na maior parte do tempo. Todas as decisões sobre a vila partem desse prédio.');
INSERT INTO regiao (nome, descricao) VALUES ('Quintais do prédio governamental', 'Região cheia de plantas e flores para acalmar os chefes políticos da vila em momentos de descontração.');
INSERT INTO regiao (nome, descricao) VALUES ('Entrada Prédio governamental', 'Arco que cria a fachada para entrada no Prédio governamental da folha.');
INSERT INTO regiao (nome, descricao) VALUES ('Área Comercial de Konoha', 'Região de alto comércio na vila da folha. Explore essa região e encontre lugares como loja e muito mais!');

INSERT INTO instancia_regiao (
  nome_regiao,
  norte,
  sul,
  leste,
  oeste
) 
VALUES('Prédio governamental da folha','Monumento dos hokages','Quintais do prédio governamental','Entrada Prédio governamental','Área Comercial de Konoha');

INSERT INTO instancia_regiao (
  nome_regiao,
  norte,
  sul,
  leste,
  oeste
) id_instancia_regiao
VALUES('Monumento dos hokages', NULL, NULL, NULL, NULL);

INSERT INTO instancia_regiao (
  nome_regiao,
  norte,
  sul,
  leste,
  oeste
) 
VALUES('Quintais do prédio governamental', NULL, NULL, NULL, NULL);

INSERT INTO instancia_regiao (
  nome_regiao,
  norte,
  sul,
  leste,
  oeste
) 
VALUES('Entrada Prédio governamental', NULL, NULL, NULL, NULL);

INSERT INTO instancia_regiao (
  nome_regiao,
  norte,
  sul,
  leste,
  oeste
) 
VALUES('Área Comercial de Konoha', NULL, NULL, NULL, NULL);

/* Personagens */

INSERT INTO personagem (
  nome,
  id_instancia_regiao,
  nome_regiao,
  tipo
) 
  VALUES ('Tsunade', 1, 'Prédio governamental da folha', 'entregador_de_missao');
INSERT INTO personagem (
  nome,
  id_instancia_regiao,
  nome_regiao,
  tipo
)
  VALUES ('Itachi', 2, 'Monumento dos hokages', 'atacante');

INSERT INTO personagem (
  nome,
  id_instancia_regiao,
  nome_regiao,
  tipo
) 
  VALUES ('Guy', 3, 'Quintais do prédio governamental', 'entregador_de_missao');

INSERT INTO personagem (
  nome,
  id_instancia_regiao,
  nome_regiao,
  tipo) 
  VALUES ('Kakashi', 4, 'Entrada Prédio governamental', 'entregador_de_missao');

INSERT INTO personagem (
  nome,
  id_instancia_regiao,
  nome_regiao,
  tipo) 
  VALUES ('Kisame', 5, 'Área Comercial de Konoha', 'atacante');

/* Atacantes */

INSERT INTO atacante 
(
  nome_atacante,
  nivel,
  vida,
  chakra,
  defesa,
  ataque,
  id_inventario,
  tipo
)
  VALUES('Itachi', 50, 100, 100, 100, 100, NULL, 'inimigo');

INSERT INTO atacante 
(
  nome_atacante,
  nivel,
  vida,
  chakra,
  defesa,
  ataque,
  id_inventario,
  tipo
)
  VALUES('Kisame', 30, 100, 90, 50, 80, NULL, 'inimigo');


/* Personagem Principal */

INSERT INTO personagem_principal (
  nome_personagem,
  dinheiro,
  experiencia,
  descricao
)
  VALUES('naruto_username', 0, 2, 'Apenas um shinobi em evolução');

INSERT INTO personagem
(
  nome, 
  id_instancia_regiao,
  nome_regiao,
  tipo
)
  VALUES('naruto_username', 5, 'Área Comercial de Konoha', 'atacante');

INSERT INTO atacante 
(
  nome_atacante,
  nivel,
  vida,
  chakra,
  defesa,
  ataque,
  id_inventario,
  tipo
)
  VALUES('naruto_username', 2, 100, 100, 100, 50, NULL, 'personagem_principal');


/* Entregadores de missão */

INSERT INTO entregador_missao (nome_entregador) VALUES ('Tsunade');
INSERT INTO entregador_missao (nome_entregador) VALUES ('Guy');
INSERT INTO entregador_missao (nome_entregador) VALUES ('Kakashi');

/* Missões */

INSERT INTO instancia_missao (titulo_missao, nome_entregador, nome_personagem) VALUES ('Tutorial 1 - Converse com kakashi', 'Tsunade', 'naruto_username');
INSERT INTO instancia_missao (titulo_missao, nome_entregador, nome_personagem) VALUES ('Derrote Itachi', 'Kakashi', 'naruto_username');
INSERT INTO instancia_missao (titulo_missao, nome_entregador, nome_personagem) VALUES ('Derrote Kisame', 'Guy', 'naruto_username');
INSERT INTO instancia_missao (titulo_missao, nome_entregador, nome_personagem) VALUES ('Treinamento de Chackra I', 'Kakashi', 'naruto_username');
INSERT INTO instancia_missao (titulo_missao, nome_entregador, nome_personagem) VALUES ('Derrote Pain', 'Tsunade', 'naruto_username');

/* Inimigo */

INSERT INTO inimigo (
  nome_inimigo,
  e_boss,
  dialogo_encontro,
  dialogo_vitoria,
  dialogo_derrota,
  experiencia_concedida
) 
  VALUES ('Itachi', FALSE, 'Vamos batalhar!', 'Não é possível! Fui derrotado!', 'Você é muito fraco! Você morreu.', 250);

INSERT INTO instancia_inimigo (
  nome_inimigo
)
  VALUES ('Itachi');

INSERT INTO inimigo (
  nome_inimigo,
  e_boss,
  dialogo_encontro,
  dialogo_vitoria,
  dialogo_derrota,
  experiencia_concedida
) 
  VALUES ('Kisame', FALSE, 'Vamos batalhar!', 'Não é possível! Fui derrotado!', 'Você é muito fraco! Você morreu.', 100);

INSERT INTO instancia_inimigo (
  nome_inimigo
)
  VALUES ('Kisame');


/* Batalha */

INSERT INTO batalha (
  nome_personagem_principal,
  nome_inimigo,
  id_instancia_inimigo,
  tempo_decorrido,
  resultado
)
  VALUES ('naruto_username', 'Itachi', 1, 200, 'vitoria');

INSERT INTO batalha (
  nome_personagem_principal,
  nome_inimigo,
  id_instancia_inimigo,
  tempo_decorrido,
  resultado
)
  VALUES ('naruto_username', 'Kisame', 2, 100, 'derrota');

/* Items */

INSERT INTO item (
  nome,
  descricao,
  desaparece,
  tipo
)
  VALUES('Elixir de cura I', 'Bebida feita de ervas medicinais de baixa qualidade que irá te devolver um pouco de vida', TRUE, 'cura');

INSERT INTO cura
(
  nome_item,
  quantidade
)
  VALUES('Elixir de cura I', 10);

INSERT INTO item (
  nome,
  descricao,
  desaparece,
  tipo
)
  VALUES('Shuriken', 'Shuriken ninja', FALSE, 'ataque');

INSERT INTO ataque
(
  nome_item,
  dano
)
  VALUES('Shuriken', 5);

INSERT INTO item (
  nome,
  descricao,
  desaparece,
  tipo
)
  VALUES('Kunai', 'Kunai ninja', FALSE, 'ataque');

INSERT INTO ataque
(
  nome_item,
  dano
)
  VALUES('Kunai', 10);

INSERT INTO item (
  nome,
  descricao,
  desaparece,
  tipo
)
  VALUES('Armadura', 'Armadura com boa defesa', FALSE, 'defesa');

INSERT INTO defesa
(
  nome_item,
  incremento
)
  VALUES('Armadura', 10);

/* Inventario e Instancias de Items */

INSERT INTO inventario DEFAULT VALUES;

UPDATE atacante SET id_inventario = 1 WHERE nome_atacante = 'naruto_username';

INSERT INTO loja(
  nome_loja,
  taxa,
  id_instancia_regiao,
  nome_regiao
)
  VALUES('Loja 1', 5, 1, 'Prédio governamental da folha');

/* Exemplo de instancia de item em um inventario */
INSERT INTO instancia_item
(
  nome_item,
  quantidade,
  id_inventario,
  id_instancia_regiao,
  nome_regiao,
  nome_loja
)
  VALUES('Shuriken', 4, 1, NULL, NULL,NULL);

INSERT INTO instancia_item
(
  nome_item,
  quantidade,
  id_inventario,
  id_instancia_regiao,
  nome_regiao,
  nome_loja
)
  VALUES('Elixir de cura I', 2, 1, NULL, NULL,NULL);

/* Exemplo de instancia de item em uma região */
INSERT INTO instancia_item
(
  nome_item,
  quantidade,
  id_inventario,
  id_instancia_regiao,
  nome_regiao,
  nome_loja
)
  VALUES('Shuriken', 2, NULL, 3, 'Quintais do prédio governamental',NULL);

INSERT INTO instancia_item
(
  nome_item,
  quantidade,
  id_inventario,
  id_instancia_regiao,
  nome_regiao,
  nome_loja
)
  VALUES('Kunai', 1, NULL, 2, 'Monumento dos hokages',NULL);

INSERT INTO instancia_item
(
  nome_item,
  quantidade,
  id_inventario,
  id_instancia_regiao,
  nome_regiao,
  nome_loja
)
  VALUES('Kunai', 1, NULL, NULL, NULL,'Loja 1');

INSERT INTO instancia_item
(
  nome_item,
  quantidade,
  id_inventario,
  id_instancia_regiao,
  nome_regiao,
  nome_loja
)
  VALUES('Shuriken', 2, NULL, NULL, NULL,'Loja 1');


INSERT INTO venda
(
  id_instancia_item,
  valor_compra,
  nome_item,
  nome_loja
)
  VALUES (5, 15, 'Kunai', 'Loja 1');

INSERT INTO venda
(
  id_instancia_item,
  valor_compra,
  nome_item,
  nome_loja
)
  VALUES (3, 15, 'Shuriken', 'Loja 1');
```

Este script pode ser acessado também através deste link: <a href="../scripts/insertions.sql" download="insertions.sql">DML</a>.

## Histórico de versões

|    Data    | Versão |             Descrição              |        Autor         |
| :--------: | :----: | :--------------------------------: | :------------------: |
| 16/01/2023 | `1.0`  | Abertura do documento (DML) | [Eliseu Kadesh](https://github.com/eliseukadesh67) |