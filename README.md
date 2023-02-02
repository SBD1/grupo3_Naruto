# Banco de Dados 1 - Naruto

Repositório para desenvolvimento do jogo Naruto da disciplina de SBD1 - 2022.2

## Equipe

|                                              Foto                                               |              Nome               |                          Github                           |
| :---------------------------------------------------------------------------------------------: | :-----------------------------: | :-------------------------------------------------------: |
|     <img src="https://github.com/MauricioMachadoFF.png" alt="Mauricio Machado" width="200">     |        Mauricio Machado         | [MauricioMachadoFF](https://github.com/MauricioMachadoFF) |
| <img src="https://github.com/caiozim112.png" alt="Caio Vitor Carneiro de Oliveira" width="200"> | Caio Vitor Carneiro de Oliveira |        [caiozim112](https://github.com/caiozim112)        |
|        <img src="https://github.com/eliseukadesh67.png" alt="Eliseu Kadesh" width="200">        |          Eliseu Kadesh          |    [eliseukadesh67](https://github.com/eliseukadesh67)    |
|       <img src="https://github.com/JoaoP-Coelho.png" alt="João Paulo Coelho" width="200">       |        João Paulo Coelho        |      [JoaoP-Coelho](https://github.com/JoaoP-Coelho)      |
|       <img src="https://github.com/macieljuniormax.png" alt="Maciel Júnior" width="200">        |          Maciel Júnior          |   [macieljuniormax](https://github.com/macieljuniormax)   |

# Utilização do Docker

A recomendação, para correção do Módulo 5, é seguir os passos a seguir:

1. Preparação
2. Banco de Dados

## Preparação

Antes de executar qualquer comando, é importante abrir o jogo em ambiente de desenvolvimento e entrar na pasta:

  	/game

Depois, é preciso dar build e subir o container:

  	sudo docker-compose up --build

## Container

Para entrar no container do jogo e realizar alterações, execute:

  	docker exec -it game_game_1 /bin/bash

## Executável

Para executar a main do jogo e vê-lo em execução:

  	docker exec -it game_game_1 python3 main.py

## Banco de Dados

Para entrar no container do banco de dados (postgres):

  	docker exec -it game_db_1 psql -U postgres
    
Depois, para entrar na database do jogo, utilize:
    psql -U postgres
  	\c naruto;

## Apresentação 2

https://user-images.githubusercontent.com/40813329/212797084-462b9571-4c6e-402d-9181-25d8d70db9e4.mp4

## Apresentação 1

https://user-images.githubusercontent.com/62910920/204405415-cb03a4c7-c023-468c-9146-682280442c0d.mp4

