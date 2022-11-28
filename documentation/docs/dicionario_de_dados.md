# Dicionario de Dados - Naruto

## 1. Introdução

Este documento destina-se a apresentar resumidamente de maneira visual os dados para a população do banco de dados.


## O que é?
O dicionário de Entidades do MER é um documento que explica o que é cada uma das entidades para que pessoas que não conheçam o contexto *Naruto* consigam entender um pouco sobre o que é cada uma daquelas entidades e, consequentemente, entender a necessidade de cada um dos atributos levantados na modelagem.

## Inspiração
Durante uma das lives, o professor Maurício comentou que seria interessante a existência de um documento para que nosso contexto fique mais claro e também que possamos anotar algumas coisas que não possam ser representadas dentro do MER.


## 2. Artefato

### 2.1. Mapa

formado pela junção de **Regiões**

| nome(string) | tamanho(int) | descricao(string) |
| :-: | :-: | :-: |
Vila Oculta da Folha|

### 2.2. Regiao

Partes do Mapa onde contém **items , PersonagemPrincipal e Inimigo**

| Nome(string) | Descrição(string)  |
| ---- | -------    |
| SalaoPrincipal | local onde o PersonagemPrincipal nasce|
| SalaoTreinamento | local onde o PersonagemPrincipal treina|
| SalaoCidade | local onde podemos pegar missoes|
| SalaoLoja | local onde o PersonagemPrincipal compra item|
| SalaoSasori | local do Primeiro Boss|
| SalaoHidan |  local do Segundo Boss|
| SalaoKakazu |  local do Terceiro Boss|
| SalaoItachi |  local do Quarto Boss|

### 2.3. PersonagemPrincipal

Personagem responsável por realizar ações definidas pelo usuario

| ID(int) | Nome(string) | Nível(int) | Dano(int) | Vida(int) |
| :-: | :-: | :-: | :-:  | :-: |
| 1 | Naruto | 1 | 200 | 1000 |

### 2.4. Inimigo

Oponente que ataca o **PersonagemPrincipal**

| ID(int) | Nome(string) | Nível(int) | Dano(int) | Vida(int) |
| :-: | :-: | :-: | :-:  | :-: |
| 1 | Sasori | 10 | 200 | 2000 |
| 2 | Hidan | 20 | 400 | 4000|
| 3 | Kakazu | 30 | 800 | 8000 |
| 4 | Itachi | 40 | 1000 | 10000 |

### 2.5. Entregadores de missão

NPC responsável por entregar **Missão** para um  **PersonagemPrincipal**

### 2.6. Inventário

Guarda os **Items**

| id_inventario(int)| quantidade(int) |  | Atacante(FK) |
| :-: | :-: | :-: | :-:  |
| 12345| 10 | 1 |

### 2.7. Item

Item que pode ser utilizado para uma finalidade específica

| nome(string) | Descricao(string) | Desaperece(boolean) |tipo_item(string)
| :-: | :-: | :-: | :-: |
| kunai| arma ninja | True |Ataque|

### 2.8. Missão
Ações executadas pelo **PersonagemPrincipal**

| titulo(string) | Descricao(string) | experienciaganha(int) | Requisitos(int)|
| :-: | :-: | :-: | :-: |
| mata sasori | mata sasori  | 150 | 10|



## Histórico de versão
| Versão | Data | Descrição | Autor |
| :----: | :--: | :-------: | :---: 
|1.0 | 26/11/2022 | Criação da página | Caio Vitor |
