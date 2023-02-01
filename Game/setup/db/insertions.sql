/* Missão */

INSERT INTO missao (titulo, tipo) VALUES ('Derrote Sasori', 'primaria'),
('Derrote Deidara', 'primaria'),
('Derrote Hidan', 'primaria'),
('Derrote Kakuzu', 'primaria'),
('Derrote Konan', 'primaria'),
('Derrote Pain', 'primaria'),
('Derrote Kisame', 'primaria'),
('Derrote Itachi', 'primaria'),
('Derrote Tobi', 'primaria'),
('Treinamento de Chackra I', 'treinamento'),
('Treinamento de Força I', 'treinamento'),
('Treinamento de Resistência I', 'treinamento'),
('Treinamento de Vida I', 'treinamento'),
('Treinamento de Chackra II', 'treinamento'),
('Treinamento de Força II', 'treinamento'),
('Treinamento de Resistência II', 'treinamento'),
('Treinamento de Vida II', 'treinamento'),
('Treinamento de Chackra III', 'treinamento'),
('Treinamento de Força III', 'treinamento'),
('Treinamento de Resistência III', 'treinamento'),
('Treinamento de Vida III', 'treinamento'),
('Transporte pergaminho de invocação ao Monte Myõboku', 'secundaria'),
('Adquira o pergaminho de jutsu Edo Tensei', 'secundaria'),
('Tutorial 1 - Converse com kakashi', 'primaria'),
('Tutorial 2 - Compre uma shuriken na loja', 'primaria'),
('Tutorial 3 - Encontre uma maçã', 'primaria'),
('Tutorial 4 - Coma a maçã', 'primaria'),
('Tutorial 5 - Converse com a Hokage', 'primaria'),
('Adquirir o rasengan', 'secundaria'),
('Aprenda o modo sábio', 'secundaria'),
('Adquira o pergaminho de invocação de cobra', 'secundaria'),
('Adquira o selo Byakugou', 'secundaria'),
('Fortalecimento selo Byakugou', 'treinamento'),
('Aprenda a andar sobre paredes', 'secundaria'),
('Aprender a andar sobre água principal', 'secundaria'),
('Cure a vila doente', 'secundaria'),
('Deixa o futuro continuar', 'secundaria');

/* Jutsu */

INSERT INTO jutsu (nome, descricao, dano, chakra_gasto_por_uso) VALUES ('Jutsu de Substituição', 'Técnica ninja básica, onde em perigo o ninja troca sua posição com algum item, não se machucando', 10, 5),
('Sombra da Folha Dançante', 'Crie três clones da sombra e distraia o inimigo para conseguir chutá-lo ao ar', 10, 5),
('Técnica de Invocação: Sapos', 'Você conseguiu ser reconhecido pelo Monte Myõboku. Agora pode invocar o Gamabunta (sapo chefe) para te ajudar em batalhas', 10, 5),
('Técnica de Invocação: Cobras', 'Você conseguiu ser reconhecido pela Caverna Ryuchi. Agora você pode Manda (chefe das cobras) para te ajudar em batalhas.', 10, 5),
('Rasengan', 'Técnica de Rank A inventada pelo Quarto Hokage (Minato), que a criou com base na formação da bola da besta com cauda. Manipulação de chakra puro em forma de uma espiral de chakra.', 10, 5),
('Jutsu Bola de Fogo', 'Usuário amassa seu chakra dentro do corpo e o converta em natureza de fogo e, em seguida, o expulsa da boca.', 10, 5),
('Chidori', 'Técnica canaliza uma grande quantidade de chakra de Liberação de Relâmpago na mão do usuário. A quantidade de chakra é tão grande que se torna visível. A alta concentração de energia elétrica produz um som que lembra muitos pássaros cantando, daí o nome. Uma vez que a técnica é completada, o usuário carrega para frente e empurra o Chidori no alvo.', 10, 5),
('Transmissão Relâmpago', 'Usando o auxílio de um clone, cada um realiza a técnica Corte Relâmpago em mãos opostas. Conectando as suas técnicas em conjunto, eles formam uma corrente de relâmpagos entre si que é capaz de cortar através de objetos como braços de chakra de bestas com cauda com grande facilidade.', 10, 5),
('Hirudora', 'Técnica que utiliza a pressão do ar criada por sua força e velocidade para criar um ataque devastador em formato de Tigre.', 10, 5),
('Modo sábio', 'Modo Sábio é um estado mental alcançado ao misturar perfeitamente a Energia Natural presente em todas as coisas, com o chakra espiritual e físico de cada pessoa, gerando assim o que é conhecido como o Chakra do Senjutsu e permitindo que o ninja acesse o Modo Sábio.  Ao entrar nesse modo, o usuário ganha upgrades em todos os seus atributos, melhorando a sua força, agilidade, reflexos, resistência e até o poder dos seus jutsus.', 10, 5),
('Andar sobre parede', 'Jutsu sem aplicação para suas futura batalhas. Aonde será possível usar o jutsu de subir paredes (algumas árvores podem ser interpretadas como paredes).', 10, 5),
('Andar sobre a água', 'Você conhece seu corpo e conhece controlar o chakra com maior precisão. Dessa forma, consegue passar por regiões onde antes não conseguia acessar (essa técnica não causa dano em inimigos).', 10, 5);

/* Regioes */

INSERT INTO regiao (nome, descricao) VALUES ('Monumento dos hokages', 'Montanha que tem tido os rostos de todos os Hokage esculpidas na pedra. Foi imaginado por Hashirama Senju como um símbolo de que os Hokage sempre zelarão pela aldeia. Para subir o monumento você precisar saber a subir paredes. Use o jutsu e aprecie a vista do topo da vila, quem sabe quais surpresas terão lá em cima.'),
('Prédio governamental da folha', 'Prédio onde o hokage está na maior parte do tempo. Todas as decisões sobre a vila partem desse prédio.'),
('Quintal do prédio governamental da folha', 'Região cheia de plantas e flores para acalmar os chefes políticos da vila em momentos de descontração.'),
('Entrada Prédio governamental da folha', 'Arco que cria a fachada para entrada no Prédio governamental da folha.'),
('Área Comercial de Konoha', 'Região de alto comércio na vila da folha. Explore essa região e encontre lugares como loja e muito mais!'),
('Área Comercial de Konoha 2', 'Região de alto comércio na vila da folha. Explore essa região e encontre lugares como loja e muito mais!'),
('Ichiraku Ramen', 'DESCRIÇÃO AQUI'),
('Loja da Folha', 'DESCRIÇÃO AQUI'),
('Praça de Konoha', 'DESCRIÇÃO AQUI'),
('Centro de vistoria de konoha', 'DESCRIÇÃO AQUI'),
('Academia Ninja', 'DESCRIÇÃO AQUI'),
('Campo de Treinamento', 'DESCRIÇÃO AQUI'),
('Campo de Treinamento Experiente', 'DESCRIÇÃO AQUI'),
('Entrada da Vila da Folha', 'DESCRIÇÃO AQUI'),
('Floresta Comum', 'DESCRIÇÃO AQUI'),
('Floresta Comum 2', 'DESCRIÇÃO AQUI'),
('Floresta Comum 3', 'DESCRIÇÃO AQUI'),
('Floresta Comum 4', 'DESCRIÇÃO AQUI'),
('Floresta de árvores frutíferas', 'DESCRIÇÃO AQUI'),
('Floresta de árvores frutíferas 2', 'DESCRIÇÃO AQUI'),
('Entrada densa floresta mágica', 'DESCRIÇÃO AQUI'),
('Entrada densa floresta mágica 2', 'DESCRIÇÃO AQUI'),
('Densa floresta mágica', 'DESCRIÇÃO AQUI'),
('Densa floresta mágica 2', 'DESCRIÇÃO AQUI'),
('Densa floresta mágica 3', 'DESCRIÇÃO AQUI'),
('Saída floresta mágica', 'DESCRIÇÃO AQUI'),
('Pequena vila', 'DESCRIÇÃO AQUI'),
('Transição de floresta mágica e regiões de plantas anciãs', 'DESCRIÇÃO AQUI'),
('Entrada terreno ancião', 'DESCRIÇÃO AQUI'),
('Região de cultivo de plantas anciãs', 'DESCRIÇÃO AQUI'),
('Região de cultivo de plantas anciãs 2', 'DESCRIÇÃO AQUI'),
('Região de cultivo de plantas anciãs 3', 'DESCRIÇÃO AQUI'),
('Região de cultivo de plantas anciãs 4', 'DESCRIÇÃO AQUI'),
('Travessia aquática especial', 'DESCRIÇÃO AQUI'),
('Aposentos do Kabuto', 'DESCRIÇÃO AQUI'),
('Caverna Ryuchi', 'DESCRIÇÃO AQUI'),
('Região dos pântanos', 'DESCRIÇÃO AQUI'),
('Região dos pântanos profunda', 'DESCRIÇÃO AQUI'),
('Travessia suspeita', 'DESCRIÇÃO AQUI'),
('Poço de Lama', 'DESCRIÇÃO AQUI'),
('Região de procriação de sapos', 'DESCRIÇÃO AQUI'),
('Região de procriação de sapos 2', 'DESCRIÇÃO AQUI'),
('Região de proteção sábia', 'DESCRIÇÃO AQUI'),
('Monte Myoboku', 'DESCRIÇÃO AQUI'),
('Centro do monte myoboku', 'DESCRIÇÃO AQUI'),
('Fonte de óleo de sapo', 'DESCRIÇÃO AQUI'),
('Árvore divina', 'DESCRIÇÃO AQUI'),
('Terreno de transição floresta e areia', 'DESCRIÇÃO AQUI'),
('Terreno arenoso', 'DESCRIÇÃO AQUI'),
('Terreno arenoso 2', 'DESCRIÇÃO AQUI'),
('Entrada Vila da Areia', 'DESCRIÇÃO AQUI'),
('Trilha de areia com altos indicativos de explosão', 'DESCRIÇÃO AQUI'),
('Trilha de areia com altos indicativos de explosão 2', 'DESCRIÇÃO AQUI'),
('Trilha de areia com altos indicativos de explosão 3', 'DESCRIÇÃO AQUI'),
('Trilha de areia com altos indicativos de explosão 4', 'DESCRIÇÃO AQUI'),
('Trilha de areia com altos indicativos de explosão 5', 'DESCRIÇÃO AQUI'),
('Trilha de areia com altos indicativos de explosão 6', 'DESCRIÇÃO AQUI'),
('Trilha de areia comum', 'DESCRIÇÃO AQUI'),
('Área comercial da vila da areia', 'DESCRIÇÃO AQUI'),
('Loja da Areia', 'DESCRIÇÃO AQUI'),
('Esconderijo de deidara', 'DESCRIÇÃO AQUI'),
('Terreno de transição da folha, areia e pedra', 'DESCRIÇÃO AQUI'),
('Terreno de transição da folha, areia e pedra 2', 'DESCRIÇÃO AQUI'),
('Terreno de transição da folha, areia e pedra 3', 'DESCRIÇÃO AQUI'),
('Terreno de transição da folha, areia e pedra 4', 'DESCRIÇÃO AQUI'),
('Terreno de transição da folha, areia e pedra 5', 'DESCRIÇÃO AQUI'),
('Terreno de transição da folha, areia e pedra 6', 'DESCRIÇÃO AQUI'),
('Encontro das trilhas das vilas da folha, areia e pedra', 'DESCRIÇÃO AQUI'),
('Terreno de pedregulhos', 'DESCRIÇÃO AQUI'),
('Terreno de pedregulhos duros', 'DESCRIÇÃO AQUI'),
('Entrada vila da pedra', 'DESCRIÇÃO AQUI'),
('Praça da vila da pedra', 'DESCRIÇÃO AQUI'),
('Praça da vila da pedra 2', 'DESCRIÇÃO AQUI'),
('Setor comercial da pedra', 'DESCRIÇÃO AQUI'),
('Região comercial abandonada da pedra', 'DESCRIÇÃO AQUI'),
('Galpão de vendas abandonado', 'DESCRIÇÃO AQUI'),
('Loja da pedra', 'DESCRIÇÃO AQUI'),
('Prédio governamental da pedra', 'DESCRIÇÃO AQUI'),
('Kúpula dos kages', 'DESCRIÇÃO AQUI'),
('Região de pedregulhos úmidos', 'DESCRIÇÃO AQUI'),
('Região de pedregulhos molhados', 'DESCRIÇÃO AQUI'),
('Região de chuva leve constante', 'DESCRIÇÃO AQUI'),
('Região de chuva média constante', 'DESCRIÇÃO AQUI'),
('Região de chuva alta constante', 'DESCRIÇÃO AQUI'),
('Entrada Vila da Chuva', 'DESCRIÇÃO AQUI'),
('Praça da vila da chuva', 'DESCRIÇÃO AQUI'),
('Travessia com ponte', 'DESCRIÇÃO AQUI'),
('Ponte', 'DESCRIÇÃO AQUI'),
('Mar', 'DESCRIÇÃO AQUI'),
('Travessia Aquática', 'DESCRIÇÃO AQUI'),
('Arena de batalha de irmãos', 'DESCRIÇÃO AQUI');


INSERT INTO instancia_regiao (
  nome_regiao,
  norte,
  sul,
  leste,
  oeste
) 
VALUES('Monumento dos hokages', NULL, NULL, NULL, 'Prédio governamental da folha',),
('Prédio governamental da folha', 'Quintal do prédio governamental da folha', NULL, 'Monumento dos hokages', 'Entrada Prédio governamental da folha',),
('Quintal do prédio governamental da folha', NULL, 'Prédio governamental da folha', NULL, NULL,), 
('Entrada Prédio governamental da folha', NULL, NULL, 'Prédio governamental da folha', 'Área Comercial de Konoha',),
('Área Comercial de Konoha', NULL, NULL, 'Entrada Prédio governamental da folha', 'Área Comercial de Konoha 2',),
('Área Comercial de Konoha 2', 'Ichiraku Ramen', 'Loja da Folha', 'Área Comercial de Konoha', 'Praça de Konoha',),
('Ichiraku Ramen', NULL, 'Área Comercial de Konoha 2', NULL, NULL,),
('Loja da Folha', 'Área Comercial de Konoha 2', NULL, NULL, NULL,),
('Praça de Konoha', NULL, NULL, 'Área Comercial de Konoha 2', 'Centro de vistoria de konoha',),
('Centro de vistoria de konoha', 'Academia Ninja', NULL, NULL, 'Entrada da Vila da Folha',),
('Academia Ninja', 'Campo de Treinamento', 'Centro de vistoria de konoha', NULL, NULL,),
('Campo de Treinamento', 'Campo de Treinamento Experiente', 'Academia Ninja', NULL, NULL),
('Campo de Treinamento Experiente', NULL, 'Campo de Treinamento', NULL, NULL),
('Entrada da Vila da Folha', NULL, NULL, 'Centro de vistoria de konoha', 'Floresta Comum',),
('Floresta Comum', 'Floresta Comum 2', NULL, 'Entrada da Vila da Folha', 'Floresta Comum 3'),
('Floresta Comum 2', 'Floresta de árvores frutíferas', 'Floresta Comum', NULL, NULL),
('Floresta de árvores frutíferas', NULL, 'Floresta Comum 2', NULL, NULL),
('Floresta Comum 3', NULL, NULL, 'Floresta Comum', 'Floresta de árvores frutíferas 2'),
('Floresta de árvores frutíferas 2', 'Entrada densa floresta mágica 2', 'Floresta Comum 4', 'Floresta Comum 3', 'Entrada densa floresta mágica',),
('Entrada densa floresta mágica 2', 'Árvore divina', 'Floresta de árvores frutíferas 2', NULL, 'Densa floresta mágica',),
('Árvore divina', NULL, 'Entrada densa floresta mágica 2', NULL, 'Densa floresta mágica 2'),
('Densa floresta mágica 2', 'Densa floresta mágica 3', 'Densa floresta mágica', 'Árvore divina', NULL),
('Densa floresta mágica 3', 'Pequena vila', 'Densa floresta mágica 3', NULL, NULL),
('Pequena vila', 'Transição de floresta mágica e regiões de plantas anciãs', 'Densa floresta mágica 3', NULL, NULL),
('Transição de floresta mágica e regiões de plantas anciãs', 'Entrada terreno ancião', 'Pequena vila', NULL, NULL),
('Entrada terreno ancião', 'Região de cultivo de plantas anciãs', 'Transição de floresta mágica e regiões de plantas anciãs', NULL, NULL),
('Região de cultivo de plantas anciãs', 'Região de cultivo de plantas anciãs 2', 'Entrada terreno ancião', NULL, NULL,),
('Região de cultivo de plantas anciãs 2', 'Região de cultivo de plantas anciãs 3', 'Região de cultivo de plantas anciãs', 'Região de cultivo de plantas anciãs 4', NULL),
('Região de cultivo de plantas anciãs 4', NULL, NULL, 'Travessia aquática especial', 'Região de cultivo de plantas anciãs 2'),
('Travessia aquática especial', NULL, NULL, 'Aposentos do Kabuto', 'Região de cultivo de plantas anciãs 4'),
('Aposentos do Kabuto', NULL, NULL, 'Caverna Ryuchi', 'Travessia aquática especial'),
('Caverna Ryuchi', NULL, NULL, NULL, 'Aposentos do Kabuto'),
('Região de cultivo de plantas anciãs 3', 'Região dos pântanos', 'Região de cultivo de plantas anciãs 2', NULL, NULL),
('Região dos pântanos', 'Região dos pântanos profunda', 'Região de cultivo de plantas anciãs 3', NULL, NULL),
('Região dos pântanos profunda', NULL, 'Região dos pântanos', 'Poço de Lama', NULL),
('Poço de Lama', 'Travessia suspeita', NULL, NULL, 'Região dos pântanos profunda'),
('Travessia suspeita', 'Região de procriação de sapos', 'Poço de Lama', NULL, NULL),
('Região de procriação de sapos', 'Região de procriação de sapos 2', 'Travessia suspeita', NULL, NULL),
('Região de procriação de sapos 2', NULL, 'Região de procriação de sapos', 'Região de proteção sábia', NULL),
('Região de proteção sábia', 'Monte Myoboku', NULL, NULL, 'Região de procriação de sapos 2'),
('Monte Myoboku', 'Centro do monte myoboku', 'Região de proteção sábia', NULL, NULL),
('Centro do monte myoboku', 'Fonte de óleo de sapo', 'Monte Myoboku', NULL, NULL),
('Fonte de óleo de sapo', NULL, 'Centro do monte myoboku', NULL, NULL),
('Floresta Comum 4', 'Floresta de árvores frutíferas 2', NULL, NULL, 'Terreno de transição floresta e areia'),
('Terreno de transição floresta e areia', 'Entrada densa floresta mágica', NULL, 'Floresta Comum 4', 'Terreno arenoso'),
('Terreno arenoso', NULL, 'Terreno arenoso 2', 'Terreno de transição floresta e areia', NULL),
('Terreno arenoso 2', 'Terreno arenoso', 'Entrada Vila da Areia', NULL, NULL),
('Entrada Vila da Areia', 'Terreno arenoso 2', 'Trilha de areia com altos indicativos de explosão', NULL, NULL),
('Trilha de areia com altos indicativos de explosão', 'Entrada Vila da Areia', 'Trilha de areia com altos indicativos de explosão 2', NULL, NULL),
('Trilha de areia com altos indicativos de explosão 2', 'Trilha de areia com altos indicativos de explosão', NULL, 'Trilha de areia comum', 'Trilha de areia com altos indicativos de explosão 3'),
('Trilha de areia com altos indicativos de explosão 3', NULL, NULL, 'Trilha de areia com altos indicativos de explosão 2', 'Trilha de areia com altos indicativos de explosão 4'),
('Trilha de areia com altos indicativos de explosão 4', 'Trilha de areia com altos indicativos de explosão 5', NULL, 'Trilha de areia com altos indicativos de explosão 3', NULL),
('Trilha de areia com altos indicativos de explosão 5', 'Trilha de areia com altos indicativos de explosão 6', 'Trilha de areia com altos indicativos de explosão 4', NULL, NULL),
('Trilha de areia com altos indicativos de explosão 6', 'Esconderijo de deidara', 'Trilha de areia com altos indicativos de explosão 5', NULL, NULL),
('Esconderijo de deidara', 'Terreno de transição da folha, areia e pedra', NULL, NULL, NULL),
('Terreno de transição da folha, areia e pedra', 'Terreno de transição da folha, areia e pedra 2', 'Esconderijo de Deidara', NULL, NULL),
('Terreno de transição da folha, areia e pedra 2', 'Terreno de transição da folha, areia e pedra 3', 'Terreno de transição da folha, areia e pedra', NULL, NULL),
('Terreno de transição da folha, areia e pedra 3', NULL, 'Terreno de transição da folha, areia e pedra 2', 'Terreno de transição da folha, areia e pedra 4', 'Terreno de transição da folha, areia e pedra 5'),
('Terreno de transição da folha, areia e pedra 4', NULL, NULL, 'Saída floresta mágica', 'Terreno de transição da folha, areia e pedra 5'),
('Saída floresta mágica', NULL, NULL, 'Densa floresta mágica', 'Terreno de transição da folha, areia e pedra 4'),
('Densa floresta mágica', 'Densa floresta mágica 2', 'Entrada densa floresta mágica', NULL, NULL),
('Entrada densa floresta mágica', 'Densa floresta mágica', 'Terreno de transição floresta e areia', 'Floresta de árvores frutíferas 2', NULL),
('Terreno de transição da folha, areia e pedra 5', NULL, NULL, 'Terreno de transição da folha, areia e pedra 3', 'Terreno de transição da folha, areia e pedra 6'),
('Terreno de transição da folha, areia e pedra 6', NULL, NULL, 'Terreno de transição da folha, areia e pedra 5', 'Encontro das trilhas das vilas da folha, areia e pedra'),
('Encontro das trilhas das vilas da folha, areia e pedra', 'Terreno de pedregulhos', NULL, 'Terreno de transição da folha, areia e pedra 6', 'Região de pedregulhos úmidos'),
('Terreno de pedregulhos', 'Terreno de pedregulhos duros', 'Encontro das trilhas das vilas da folha, areia e pedra', NULL, NULL),
('Terreno de pedregulhos duros', 'Entrada vila da pedra', 'Terreno de pedregulhos', NULL, NULL),
('Entrada vila da pedra', 'Praça da vila da pedra', 'Terreno de pedregulhos duros', NULL, NULL),
('Praça da vila da pedra', 'Prédio governamental da pedra', 'Entrada vila da pedra', 'Praça da vila da pedra 2', NULL),
('Praça da vila da pedra 2', NULL, NULL, 'Setor comercial da pedra', 'Praça da vila da pedra'),
('Setor comecial da pedra', 'Loja da pedra', NULL, 'Região comercial abandonada da pedra', NULL),
('Região comercial abandonada da pedra', NULL, 'Galpão de vendas abandonado', NULL, 'Setor comercial da pedra'),
('Galpão de vendas abandonado', 'Região comercial abandonada da pedra', NULL, NULL, NULL),
('Prédio governamental da pedra', 'Kúpula dos kages', 'Praça da vila da pedra', NULL, NULL),
('Região de pedregulhos úmidos', NULL, NULL, 'Encontro das trilhas das vilas da folha, areia e pedra', 'Região de pedregulhos molhados'),
('Região de pedregulhos molhados', NULL, NULL, 'Região de pedregulhos úmidos', 'Região de chuva leve constante'),
('Região de chuva leve constante', NULL, NULL, 'Região de pedregulhos molhados', 'Região de chuva média constante'),
('Região de chuva média constante', NULL, 'Travessia com ponte', 'Região de chuva leve constante', 'Região de chuva alta constante'),
('Região de chuva alta constante', NULL, NULL, 'Região de chuva média constante', 'Entrada Vila da Chuva'),
('Entrada Vila da Chuva', NULL, NULL, 'Região de chuva alta constante', 'Praça da Vila da Chuva'),
('Praça da Vila da Chuva', NULL, NULL, 'Entrada Vila da Chuva', NULL,),
('Travessia com ponte', 'Região de chuva média constante', 'Ponte', NULL, NULL),
('Ponte', 'Travessia com ponte', 'Mar', NULL, NULL),
('Mar', 'Ponte', 'Travessia Aquática', NULL, NULL),
('Travessia Aquática', NULL, 'Mar', 'Arena de batalha de irmãos', NULL),
('Arena de batalha de irmãos', 'Travessia Aquática', NULL, NULL, NULL),
('Trilha de areia comum', NULL, NULL, 'Área comercial da vila da areia', 'Trilha de areia com altos indicativos de explosão 2'),
('Área comercial da vila da areia', NULL, NULL, 'Loja da Areia', 'Trilha de areia comum'),
('Loja da Areia', NULL, NULL, NULL, 'Área comercial da vila da areia'),
('Loja da Areia', NULL, 'Setor comecial da pedra', NULL, NULL);

/* Personagens */

INSERT INTO personagem (
  nome,
  id_instancia_regiao,
  nome_regiao,
  tipo
) 
VALUES ('Tsunade', 2, 'Prédio governamental da folha', 'entregador_de_missao');
('Itachi', 1, 'Monumento dos hokages', 'atacante'),
('Guy', 3, 'Quintal do prédio governamental da folha', 'entregador_de_missao'),
('Kakashi', 4, 'Entrada Prédio governamental da folha', 'entregador_de_missao'),
('Kisame', 5, 'Área Comercial de Konoha', 'atacante'),

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
  VALUES('Shuriken', 2, NULL, 3, 'Quintal do prédio governamental da folha', NULL);

INSERT INTO instancia_item
(
  nome_item,
  quantidade,
  id_inventario,
  id_instancia_regiao,
  nome_regiao,
  nome_loja
)
  VALUES('Kunai', 1, NULL, 1, 'Monumento dos hokages', NULL);

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
