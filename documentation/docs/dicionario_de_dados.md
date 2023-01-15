# Dicionario de Dados - Naruto

## 1. Introdução

Este documento destina-se a apresentar resumidamente de maneira visual os dados para a população do banco de dados.


## O que é?
O dicionário de Entidades do MER é um documento que explica o que é cada uma das entidades para que pessoas que não conheçam o contexto *Naruto* consigam entender um pouco sobre o que é cada uma daquelas entidades e, consequentemente, entender a necessidade de cada um dos atributos levantados na modelagem.

## Inspiração
Durante uma das lives, o professor Maurício comentou que seria interessante a existência de um documento para que nosso contexto fique mais claro e também que possamos anotar algumas coisas que não possam ser representadas dentro do MER.


## 2. Artefato

### 2.1. Regiao

Ambientes do jogo onde contém **items , PersonagemPrincipal e Inimigo**

| Nome       | Descrição                                                                                                                                             | Nome_Mapa | Norte       | Sul        | Leste       | Oeste       |
|------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|-----------|-------------|------------|-------------|-------------|
| Konoha     | A vila oculta da folha, onde Naruto Uzumaki e seus amigos vivem e treinam para se tornarem ninjas.                                                    | Konoha    | Montanhas   | Rio        | Floresta    | Deserto     |
| Suna       | A vila oculta do vento, liderada pelo Sábio dos Seis Caminhos. É conhecida por seus ninjas de longo alcance e táticas de combate de areia.             | Suna      | Montanhas   | Deserto    | Oceano      | Nenhum      |
| Ame        | A vila oculta da chuva, liderada por Hanzō. É conhecida por seus ninjas com habilidades de assassinato e inteligência.                                  | Ame       | Montanhas   | Selva      | Nenhum      | Nenhum      |
| Oto        | A vila oculta do som, liderada por Orochimaru. É conhecida por seus ninjas com habilidades de genjutsu e técnicas de invocação.                        | Oto       | Montanhas   | Rio        | Nenhum      | Nenhum      |
| Ilha da Luta | Uma ilha remota onde ocorre o torneio Chunin, onde os genins de várias vilas ocultas se enfrentam em batalhas.                                         | Ilha da Luta | Oceano     | Oceano     | Oceano     | Oceano     |

### 2.2. Instância da Região

Instância das regiões do jogo

| id | Nome_Região   |
|----|---------------|
| 1  | Konoha         |
| 2  | Suna            |
| 3  | Ame              |


### 2.3. Personagem

Início da criação de todos tipos de **Personagem**

| Nome            | Tipo_Personagem |
|------------------|------------------|
| Naruto Uzumaki   | Atacante         |
| Sakura Haruno    | Atacante         |
| Kakashi Hatake   | EntregadorDeMissao |
| Shikamaru Nara   | EntregadorDeMissao |
| Gaara            | Atacante         |

### 2.4. Atacante

Tipo de personagem que irá se envolver em batalhas.

| Nome_Atacante    | Tipo_Atacante    | Nível | Ataque | Vida  | Defesa | Chakra |
|------------------|------------------|-------|--------|-------|--------|--------|
| Naruto Uzumaki   | PersonagemPrincipal | 15    | 200    | 1000  | 150    | 800    |
| Sakura Haruno    | PersonagemPrincipal | 12    | 150    | 800   | 120    | 600    |
| Kaguya Ōtsutsuki | Inimigo          | 20    | 300    | 1500  | 200    | 1000   |
| Obito Uchiha     | Inimigo          | 18    | 250    | 1300  | 180    | 900    |
| Madara Uchiha    | Inimigo          | 22    | 350    | 1700  | 220    | 1100   |

### 2.5. Inimigo

Oponente que ataca o **PersonagemPrincipal**

| Nome_Inimigo    | E_Boss | Dialogo_Encontro                                                                                                                                 | Dialogo_Vitoria                                                                                                                                 | Dialogo_Derrota                                                                                                                                 | Experiencia_Concedida |
|-----------------|--------|------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|----------------------|
| Kaguya Ōtsutsuki | Sim    | "Eu sou Kaguya Ōtsutsuki, a mãe de todas as coisas vivas. Vocês não têm a menor chance contra mim."                                       | "Como é possível? Eu sou a mãe de todas as coisas vivas! Como vocês podem me derrotar?"                                            | "Vocês jamais serão páreo pra mim"                                                        | 5000                 |
| Deidara     | Sim    | "Eu sou Deidara, o artista supremo. Vocês não têm a menor chance contra mim."                                                                                       | "A arte é uma explosão, Katsu!"                                      | "Eu não posso acreditar, eu perdi. Mas minhas obras de arte sempre serão lembradas."                                      | 2000                 |
| Ninja da Areia   | Não    |  |  |  | 500 |

### 2.6. Personagem Principal

Personagem do jogador.

| Nome_Personagem | Dinheiro | Descrição       | Experiencia |
|------------------|----------|-----------------|-------------|
| Naruto Uzumaki    | 100       | Jovem ninja aspirante a Hokage | 0 |

### 2.7. Batalha

Armazenamento da duração das batalhas e seus resultados

| Id_Batalha | Tempo_Decorrido | Resultado   |
|------------|------------------|-------------|
| 1           | 9:54              | Vitória    |
| 2           | 15:37             | Derrota     |

### 2.8. Entregadores de missão

Personagem que entrega missões para o jogador

| nome_entregador(string)|
| :-: |
| Kakashi |

### 2.9. Missão

Missões que o jogador pode ou deve realizar.

| Título                 | Tipo_Missão |
|------------------------|------------|
| Treinamento Ninja      | Treinamento|
| Caça ao Deidara        | Geral      |
| Entrega de Encomenda   | Geral      |

### 2.10. Treinamento

Missões onde o jogador pode treinar suas habilidades e aumentar seus status.

| Título_Missão          | Descrição | Experiência_Ganha | Nível_Necessário | Incremento | Tempo_Requerido | Chance_Sucesso | Cooldown |
|------------------------|----------|-------------------|------------------|------------|------------------|----------------|----------|
| Treinamento Ninja Básico | Treinamento básico para aprimoramento pessoal | 1000 | 5 | 10 | 120 | 80 | 60 |
| Treinamento de Taijutsu | Treinamento focado em taijutsu | 800 | 3 | 5 | 60 | 50 | 30 |
| Treinamento de Sharingan | Treinamento focado na habilidade visual Sharingan | 500 | 8 | 3 | 90 | 70 | 120 |

### 2.11. Geral

Missões primárias e secundárias que o jogador pode realizar.

| Título_missão | is_primary | Descrição                                                                                                                                 | Experiência_Ganha | Nível_Necessário |
|----------------|------------|--------------------------------------------------------------------------------------------------------------------------------------------|--------------------|------------------|
| Caça ao Deidara | true      | Cace Deidara para chegar mais perto do lider da Akatsuki                                                                                           | 5000                | 10                |
| Entrega de Encomenda | false | Faça a entrega de encomendas para os moradores da vila.                                                                                | 2000                | 2                |

### 2.12. Instância de missão

Instâncias da missão entregue pelos entregadores de missão.

| id  | Is_Done |
|-----|---------|
| 1   | true    |
| 2   | false   |
| 3   | true    |

### 2.13. Jutsu

Jutsus utilizados por atacantes nas batalhas

| Nome            | Descrição                                           | Dano  | Chakra_Gasto_Por_Uso |
|------------------|----------------------------------------------------|-------|-----------------------|
| Rasengan         | Técnica de bola de chakra concentrado              | 1000  | 20                      |
| Chidori           | Técnica de relâmpago concentrado                    | 800   | 25                      |
| Sharingan Mangekyō | Evolução do Sharingan, habilita o uso de Amaterasu | 1200 | 50                      |

### 2.14. Sabe Jutsu

Relação para mostrar que um personagem sabe um jutsu

| Nome_Jutsu       | Nome_Atacante    |
|------------------|------------------|
| Rasengan         | Naruto Uzumaki    |
| Chidori           | Sasuke Uchiha     |
| Sharingan Mangekyō | Itachi Uchiha    |

### 2.15. Loja

Lojas em que o personagem principal pode comprar items.

| Nome     | Taxa |
|----------|------|
| Loja de Ramen | 10    |
| Loja de Armas Ninja | 20    |
| Loja de Pergaminhos | 5     |

### 2.16. Venda

Ato de realizar uma compra numa loja.

| id_Venda | Valor_compra |
|----------|--------------|
| 1        | 100           |
| 2        | 50            |
| 3        | 200          |

### 2.17. Item

Item que pode ser utilizado para uma finalidade específica

| Nome     | Descrição                                 | desaparece | tipo_item |
|----------|------------------------------------------------|------------|------------|
| Pílula de Cura | Cura pequenos ferimentos | true   | Cura          |
| Shuriken | Arma de ataque à distância              | true   | Ataque       |
| Armadura | Aumenta a defesa do usuário             | true   | Defesa       |
| Pílula de Chakra | Recupera o chakra do usuário | true    | Chakra       |
| Encomenda | Entregue para a Tsunade | false    |        |

### 2.18. Cura

Items para curar vida do personagem

| Nome_item | Quantidade |
|-----------|------------|
| Pílula de Cura | 10       |
| Poção de Cura  | 5        |

### 2.19. Ataque

Items para utililizar em batalhas pelo persoanagem

| Nome_item | Dano |
|-----------|------|
| Shuriken  | 100  |
| Kunai | 150 |

### 2.20. Defesa

Items que aumentam a defesa do personagem

| Nome_item   | Incremento |
|-------------|------------|
| Armadura    | 50         |
| Pílula de defesa      | 30         |

### 2.21. Chakra

Items que reccuperam o Chakra do personagem

| Nome_item     | Ganho |
|---------------|-------|
| Pílula de Chakra | 20   |
| Erva de Chakra   | 10   |

### 2.22. Instância de item

Instância dos items do jogo, armazenados no inventário do personagem.

| Id | Nome_Item     | Quantidade |
|----|---------------|------------|
| 1  | Pílula de Cura | 10         |
| 2  | Shuriken      | 5          |
| 3  | Kunai      | 2          |

### 2.23. Inventário

Guarda os **Items**

| Id |
|----|
| 1  |
| 2  |
| 3  |

## Histórico de versão
| Versão | Data | Descrição | Autor |
| :----: | :--: | :-------: | :---: 
|1.0 | 26/11/2022 | Criação da página | Caio Vitor Carneiro |
|2.0 | 15/01/2023 | Criação do novo Dicionário de Dados | João Paulo Coelho |
