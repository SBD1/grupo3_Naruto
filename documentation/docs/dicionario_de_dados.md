# Dicionario de Dados - Naruto

## 1. Introdução

Este documento destina-se a apresentar resumidamente de maneira visual os dados para a população do banco de dados.


## O que é?
O dicionário de Entidades do MER é um documento que explica o que é cada uma das entidades para que pessoas que não conheçam o contexto *Naruto* consigam entender um pouco sobre o que é cada uma daquelas entidades e, consequentimente, entender a necessidade de cada um dos atributos levantados na modelagem.

## Inspiração
Durante uma das lives, o professor Maurício comentou que seria interessante a existência de um documento para que nosso contexto fique mais claro e também que possamos anotar algumas coisas que não possam ser representados dentro do MER.


## 2. Artefato

### 2.1. Mapa

|Descrição  |
|-------    |
|formado pela junção de **Regiões**|

### 2.2. Regiao 
|Descrição  |
|-------    |
|Partes do Mapa onde contém **items , PersonagemPrincipal e Inimigo**|

| Nome | Descrição  |
| ---- | -------    | 
| SalaoPrincipal | local onde o PersonagemPrincipal nasce|
| SalaoTreinamento | local onde o PersonagemPrincipal treina| 
| SalaoCidade | local onde podemos pegar missoes| 
| SalaoLoja | local onde o PersonagemPrincipal compra item| 
| SalaoSasori | local do Primeiro Boss| 
| SalaoHidan |  local do Segundo Boss| 
| SalaoKakazu |  local do Terceiro Boss|  
| MissaoItachi |  local do Quarto Boss|  

### 2.3. PersonagemPrincipal
| ID | Nome | Nível | Dano | Vida |
| :-: | :-: | :-: | :-:  | :-: |
| 1 | Naruto | 1 | 200 | 1000 |

### 2.3. Inimigo

| ID | Nome | Nível | Dano | Vida |
| :-: | :-: | :-: | :-:  | :-: |
| 1 | Sasori | 10 | 200 | 2000 |
| 2 | Hidan | 20 | 400 | 4000|
| 3 | Kakazu | 30 | 800 | 8000 |
| 4 | Itachi | 40 | 1000 | 10000 |


### 2.3. Inventário
 Descrição |
| :-: |
| Guarda os Itens|



### 2.3. Item
 Descrição |
| :-: |
| Item que pode ser utilizado para uma finalidade específica |


### 2.3. Missão
 Descrição |
| :-: |
| Missao dada por um Villager para um PersonagemPrincipal|
