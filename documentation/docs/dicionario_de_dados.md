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

| Atributo       | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo   |
|----------------|-------------------------|---------------|----------|-----------|-----------|
| Nome           | Chave Primária Obrigatória | varchar       | 30      | Nome da região do jogo | "Konoha"  |
| Descrição      | Obrigatório              | varchar       | 255     | Descreve a região | "A vila oculta da folha, onde Naruto Uzumaki e seus amigos vivem e treinam para se tornarem ninjas." |                                               

### 2.2. Instância da Região

Instância das regiões do jogo

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo   |
|-----------------|-------------------------|---------------|----------|-----------|-----------|
| Id              | Chave Primária Obrigatória | int           | 3       | Id da instância da região | 1 |
| Nome_Regiao     | Chave Primária Obrigatória | varchar       | 30      | Nome da região | "Konoha" |
| Norte          | Opcional                  | varchar       | 30      | O que está a norte da região | "Montanhas" |
| Sul            | Opcional                  | varchar       | 30      | O que está a sul da região | "Rio"     |
| Leste          | Opcional                  | varchar       | 30      | O que está a leste da região | "Floresta"|
| Oeste          | Opcional                  | varchar       | 30      | O que está a oeste da região | "Deserto" |     

### 2.3. Personagem

Início da criação de todos tipos de **Personagem**

| Atributo           | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo            |
|--------------------|-------------------------|---------------|----------|-----------|--------------------|
| Nome               | Chave Primária Obrigatória | varchar       | 20      | Nome do personagem | "Naruto Uzumaki" |
| Tipo_Personagem    | Obrigatório              | varchar       | 17      | Qual o tipo do personagem | "EntregadorDeMissao" ou "Atacante" |


### 2.4. Atacante

Tipo de personagem que irá se envolver em batalhas.

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Nome_atacante   | Chave Primária Obrigatória | varchar       | 20      | Nome do personagem | "Naruto Uzumaki"  |
| Tipo_atacante   | Obrigatório              | varchar       | 19      | Qual o tipo de atacante | "PersonagemPrincipal" ou "Inimigo" |
| Nivel           | Obrigatório              | int           | 2       | Nível do personagem | "15" |
| Ataque          | Obrigatório              | int           | 3       | Ataque do personagem | "200" |
| Vida            | Obrigatório              | int           | 4       | Vida do personagem   | "1000" |
| Defesa          | Obrigatório              | int           | 3       | Defesa do personagem | "150" |
| Chakra          | Obrigatório              | int           | 4       | Chakra do Personagem | "800" |


### 2.5. Inimigo

Oponente que ataca o **PersonagemPrincipal**

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
Nome_inimigo           | Chave Primária Obrigatória | varchar      | 20      | Nome do inimigo                                                                                           | "Deidara"
E_boss                 | Obrigatório              | boolean     | 1       | Se o inimigo é um boss                                                                                   | "True"
Dialogo_encontro       | Opcional                  | varchar     | 255     | Diálogo que ocorre quando o jogador encontra o inimigo                                                    | "Eu sou Deidara, o artista supremo. Vocês não têm a menor chance contra mim."
Dialogo_vitoria        | Opcional                  | varchar     | 255     | Diálogo que ocorre quando o jogador vence o inimigo                                                       | "A arte é uma explosão, Katsu!"
Dialogo_derrota        | Opcional                  | varchar     | 255     | Diálogo que ocorre quando o jogador perde para o inimigo                                                  | "Eu não posso acreditar, eu perdi. Mas minhas obras de arte sempre serão lembradas."
Experiencia_concedida  | Obrigatório              | int         | 5       | Experiência concedida ao jogador quando ele derrota o inimigo                                            | "2000"

### 2.6. Personagem Principal

Personagem do jogador.

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Nome_Personagem          | Chave Primária Obrigatória  | varchar           | 20       | Nome do personagem | "Naruto Uzumaki" |
| Dinheiro          | Obrigatório  | int           | 6       | Quantidade de dinheiro que o persoangem tem | "1000" |
| Descrição          | Obrigatório  | varchar           | 100       | Descrição de quem é o personagem | "Jovem ninja aspirante a Hokage" |
| Experiência          | Obrigatório  | int           | 5       | Quanto de experiência o personagem tem | "0" |

### 2.7. Batalha

Armazenamento da duração das batalhas e seus resultados

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Id_batalha | Chave Primária Obrigatória  | int           | 4       | Id da batalha | "1" |
| Tempo_decorrido | Obrigatório  | int           |    5    | Tempo em segundos da batalha | "653" |
| Resultado | Obrigatório  | varchar           |    7    | Resultado da batalha | "Vitória" ou "Derrota" |

### 2.8. Entregadores de missão

Personagem que entrega missões para o jogador

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Nome_entregador | Chave Primária Obrigatória  | varchar           | 20       | Personagem que entrega missões | "Hatake Kakashi" |

### 2.9. Missão

Missões que o jogador pode ou deve realizar.

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Título | Chave Primária Obrigatória  | varchar           | 40       | Nome da missão | "Caça ao Deidara" |
| Tipo_missao | Obrigatório  | varchar           | 11       | Tipo da missão | "Treinamento" ou "Geral" |

### 2.10. Treinamento

Missões onde o jogador pode treinar suas habilidades e aumentar seus status.

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Título_missao | Chave Primária Obrigatória  | varchar           | 40       | Nome da missão | "Treinamento de Taijutsu" |
| Descrição | Obrigatório  | varchar           | 100       | Descrição da missão | "Treinar seu taijutsu para ficar mais forte" |
| Experiência_ganha | Obrigatório  | int           | 5       | Quantidade de experiência ganha ao completar a missão | "800" |
| Nível_Necessario | Obrigatório  | int           | 2       | Nível necessário para realizar a missão | "3" |
| Incremento | Obrigatório  | int           | 3       | Quanto de atributo você ira ganhar | "10" |
| Tempo_Requerido | Obrigatório  | int           | 4       | Quanto tempo em segundos demorará o treino | "120" |
| Chance_Sucesso | Obrigatório  | int           | 2       | Porcentagem de chance de sucesso do treino | "75" |
| Cooldown | Obrigatório  | int           | 4       | Quanto tempo em segundos demorará para poder treinar de novo | "1800" |

### 2.11. Geral

Missões primárias e secundárias que o jogador pode realizar.

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Título_missao | Chave Primária Obrigatória  | varchar           | 40       | Nome da missão | "Caça ao Deidara" |
| is_primary | Obrigatória  | boolean           | 1       | Diz se a missão é primária ou secundária | "True" ou "False" |
| Descrição | Obrigatória  | varchar           | 100       | Descrição da missão | "Cace Deidara para chegar mais perto do lider da Akatsuki" |
| Experiência_ganha | Obrigatória  | int           | 5       | Experiência ganha ao completar missão | "5000" |
| Nível_necessário| Obrigatória  | int           | 2       | Nível necessário para iniciar a missão | "10" |

### 2.12. Instância de missão

Instâncias da missão entregue pelos entregadores de missão.

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Id | Chave Primária Obrigatória  | int           | 3       | Id da missão | "1" |
| Titulo_missao | Chave Primária Obrigatória  | varchar         | 40       | Nome da missão | "Caça ao Deidara" |
| Is_Done | Obrigatório  | boolean           | 1       | Diz se missão está feita ou não | "True" ou "False" |

### 2.13. Jutsu

Jutsus utilizados por atacantes nas batalhas

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Nome | Chave Primária Obrigatória  | varchar           | 20       | Nome do jutsu | "Rasengan" |
| Descrição | Obrigatório | varchar           | 50      | Descrição do jutsu | "Técnica de bola de chakra concentrado" |
| Dano | Obrigatório | int           | 4      | Quanto de dano jutsu dá | "1000" |
| Chakra_gasto_por_uso | Obrigatório | int           | 3      | Quanto de chakra é gasto para usar o jutsu | "50" |

### 2.14. Sabe Jutsu

Relação para mostrar que um personagem sabe um jutsu

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Nome_jutsu | Chave Primária Obrigatória  | varchar           | 20       | Nome do jutsu | "Rasengan" |
| Nome_atacante| Chave Primária Obrigatória  | varchar           | 20       | Nome do atacante | "Naruto Uzumaki" |

### 2.15. Loja

Lojas em que o personagem principal pode comprar items.

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Nome | Chave Primária Obrigatória  | varchar           | 20       | Nome da loja | "Loja de Ramen" |
| Taxa| Obrigatório  | int           | 2       | Taxa da loja para compras | "10" |

### 2.16. Venda

Ato de realizar uma compra numa loja.

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Id_venda | Chave Primária Obrigatória  | int          | 3       | Id de uma venda na loja | "1" |
| Valor_compra | Chave Primária Obrigatória  | int          | 4       | Valor total da compra na loja | "100" |

### 2.17. Item

Item que pode ser utilizado para uma finalidade específica

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Nome | Chave Primária Obrigatória  | varchar          | 20      | Nome do item | "Shuriken" |
| Descrição | Obrigatório  | varchar          | 50      | Descrição do item | "Arma de ataque à distância" |
| Desaparece | Obrigatório  | boolean          | 1      | Se o item desaparece ou não caso fique no chão por muito tempo | "True" ou "False" |
| Tipo_item | Obrigatório  | varchar          | 6      | Qual o tipo do item | "Cura", "Defesa", "Ataque" ou "Chakra" |

### 2.18. Cura

Items para curar vida do personagem

| Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Nome_item | Chave Primária Obrigatória  | varchar          | 20      | Nome do item | "Pílula de Cura" |
| Quantidade | Obrigatório | int       | 3      | Quanto de vida ele irá curar | "200" |

### 2.19. Ataque

Items para utililizar em batalhas pelo persoanagem

 Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Nome_item | Chave Primária Obrigatória  | varchar          | 20      | Nome do item | "Shuriken" |
| Dano | Obrigatório  | int          | 3      | Quanto de dano o item dá em lutas | "100" |

### 2.20. Defesa

Items que aumentam a defesa do personagem

 Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Nome_item | Chave Primária Obrigatória  | varchar          | 20      | Nome do item | "Pílula de defesa" |
| Incremento | Obrigatório  | int          | 3      | Quanto item dá de incremento na defesa | "50" |

### 2.21. Chakra

Items que reccuperam o Chakra do personagem

 Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Nome_item | Chave Primária Obrigatória  | varchar          | 20      | Nome do item | "Erva de Chakra" |
| Ganho | Chave Primária Obrigatória  | int          | 3      | Quanto de chakra o item recupera | "150" |

### 2.22. Instância de item

Instância dos items do jogo, armazenados no inventário do personagem.

Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Id | Chave Primária Obrigatória  | int          | 3      | Id do item | "1" |
| Nome | Chave Primária Obrigatória  | varchar          | 20      | Nome do item | "Shuriken" |
| Quantidade | Obrigatório  | int          | 3      | Quantos itens do tipo o personagem tem | "20" |

### 2.23. Inventário

Guarda os **Items**

Atributo        | Propriedades do Atributo | Tipo de dado | Tamanho | Descrição | Exemplo              |
|-----------------|-------------------------|---------------|----------|-----------|----------------------|
| Id | Chave Primária Obrigatória  | int          | 3      | Id do inventário do personagem | "1" |

## Histórico de versão
| Versão | Data | Descrição | Autor |
| :----: | :--: | :-------: | :---: 
|1.0 | 26/11/2022 | Criação da página | Caio Vitor Carneiro |
|2.0 | 15/01/2023 | Criação do novo Dicionário de Dados | João Paulo Coelho |
|3.0 | 15/01/2023 | Alteração da forma que é feita o dicionário de dados | João Paulo Coelho |
