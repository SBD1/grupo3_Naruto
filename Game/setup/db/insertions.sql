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
INSERT INTO regiao (nome, descricao) VALUES ('Quintal do prédio governamental', 'Região cheia de plantas e flores para acalmar os chefes políticos da vila em momentos de descontração.');
INSERT INTO regiao (nome, descricao) VALUES ('Entrada Prédio governamental', 'Arco que cria a fachada para entrada no Prédio governamental da folha.');
INSERT INTO regiao (nome, descricao) VALUES ('Área Comercial de Konoha', 'Região de alto comércio na vila da folha. Explore essa região e encontre lugares como loja e muito mais!');
INSERT INTO regiao (nome, descricao) VALUES('IChiraku Ramen', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Loja da Folha', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Praça de Konoha', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Centro de vistoria de konoha', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Academia ninja', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Campo de Treinamento', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Campo de Treinamento Experiente', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Entrada da Vila da Folha', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Floresta Comum', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Floresta de árvores frutíferas', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Entrada densa floresta mágica', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Densa floresta mágica', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Saída floresta mágica', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Pequena vila', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Transição de floresta mágica e regiões de plantas anciãs', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Entrada Terreno Ancião', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Região de cultivo de plantas anciãs', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Travessia aquática especial', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Aposentos de kabuto', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Caverna Ryuchi', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Região dos pântanos', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Região dos pântanos profunda', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Travessia suspeita', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Poço de lama', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Travessia de cipós', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Região de procriação de sapos', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Região de proteção sábia', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Monte Myoboku', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Centro do monte myoboku', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Fonte de óleo de sapo', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Árvore divina', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Terreno de transição floresta e areia', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Terreno arenoso', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Entrada vila da areia', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Trilha de areia com altos indicativos de explosão', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Trilha de areia com médios indicativos de explosão', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Trilha de areia com baixos indicativos de explosão', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Trilha de areia comum', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Área comercial da vila da areia', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Loja da Areia', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Esconderijo de deidara', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Terreno de transição da folha, areia e pedra', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Encontro das trilhas das vilas da folha, areia e pedra', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Terreno de pedregulhos', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Terreno de pedregulhos duros', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Entrada vila da pedra', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Praça da vila da pedra', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Praça da vila da pedra', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Setor comercial da pedra', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Região comercial abandonada da pedra', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Galpão de vendas abandonado', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Loja da pedra', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Prédio governamental da Pedra', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Kúpula dos Kages', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Região de pedregulhos úmidos', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Região de pedregulhos molhados', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Região de chuva leve constante', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Região de chuva média constante', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Região de chuva alta constante', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Entrada vila da chuva', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Praça da vila da chuva', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Floresta comum (avançada)', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Travessia com ponte', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Ponte', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Mar', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Travessia aquática', 'DESCRIÇÃO AQUI');
INSERT INTO regiao (nome, descricao) VALUES('Arena de batalha de irmãos', 'DESCRIÇÃO AQUI');


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
)
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
  VALUES('Kisame', 30, 200, 90, 50, 80, NULL, 'inimigo');

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

INSERT INTO instancia_inimigo (nome_inimigo, nome_regiao) VALUES ('Itachi', 'Monumento dos hokages');

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
  nome_inimigo,
  nome_regiao
)
  VALUES ('Kisame', 'Prédio governamental da folha');


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
  VALUES('Shuriken', 4, 1, NULL, NULL, NULL);

INSERT INTO instancia_item
(
  nome_item,
  quantidade,
  id_inventario,
  id_instancia_regiao,
  nome_regiao,
  nome_loja
)
  VALUES('Elixir de cura I', 2, 1, NULL, NULL, NULL);

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
  VALUES('Shuriken', 2, NULL, 3, 'Quintais do prédio governamental', NULL);

INSERT INTO instancia_item
(
  nome_item,
  quantidade,
  id_inventario,
  id_instancia_regiao,
  nome_regiao,
  nome_loja
)
  VALUES('Kunai', 1, NULL, 2, 'Monumento dos hokages', NULL);

INSERT INTO instancia_item
(
  nome_item,
  quantidade,
  id_inventario,
  id_instancia_regiao,
  nome_regiao,
  nome_loja
)
  VALUES('Kunai', 1, NULL, NULL, NULL, 'Loja 1');

INSERT INTO instancia_item
(
  nome_item,
  quantidade,
  id_inventario,
  id_instancia_regiao,
  nome_regiao,
  nome_loja
)
  VALUES('Shuriken', 2, NULL, NULL, NULL, 'Loja 1');


INSERT INTO instancia_item
(
  nome_item,
  quantidade,
  id_inventario,
  id_instancia_regiao,
  nome_regiao,
  nome_loja
)
  VALUES('Shuriken', 2, NULL, NULL, 'Prédio governamental da folha', 'Loja 1');

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