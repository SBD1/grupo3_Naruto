from time import sleep
from database import get_user_info, insert_new_personagem,mudarRegiaoUsuario,run_query_fetchone,run_update,run_insert,run_query_fetchall,mudarVida
from utils import *


def welcome_screen():
    print(r""" Naruto """)
    print('=======================================================================')
    print('Bem vindo ao jogo do Naruto \'Em All, seguem algumas instruções para \nque você consiga jogar')
    print('- Ações: Ações possíveis serão mostradas no console, ao lado de um número.\n'
          '         Para executá-las insira o número desejado e pressione ENTER.')
    print('\nO Menu abaixo vai ter dar uma noção de como as coisas vão ser:')
    initial_menu()


def initial_menu():
    player_name = ''
    while True:
        print_title('MENU INICIAL')
        print('1 - Criar novo jogo')
        print('2 - Mudar regiao')
        print('3 - ve regiao regiao')
        print('4 - Procurar item na regiao')
        print('5 - Aprender Jutsu')
        print('0 - Sair')
        tecla = input('Insira sua escolha: ')
        print()
        if tecla == '1':
            player_name = create_new_player()
            if player_name == '':
                print('\n\n')
                continue
        elif tecla == '2':
            playerData=run_query_fetchone(f"SELECT * from personagem WHERE nome='{player_name}'")
            query_response = run_query_fetchone(f"SELECT * from instancia_regiao where nome_regiao='{playerData['nome_regiao']}'")
            for item in list(query_response.values()):
                print(item)
            mudarRegiaoPersonagem=input('Insira o mapa da sua escolha:  ')
            query_responseRegiao = run_query_fetchone(f"SELECT * from instancia_regiao where nome_regiao='{mudarRegiaoPersonagem}'")
            run_update(f"UPDATE personagem SET (id_instancia_regiao,nome_regiao) = ('{query_responseRegiao['id']}','{mudarRegiaoPersonagem}') WHERE nome ='{player_name}';")
        elif tecla == '3':
            personagem= run_query_fetchone(f"SELECT * from personagem where nome='{playerData['nome']}'")
            print(personagem)
        elif tecla== '4':
            batalha(player_name)
        elif tecla== '5':
                jutsuData=run_query_fetchall(f"SELECT * from jutsu")
                for item in  jutsuData:
                    print(item['nome'])
                entradajutsu=input('qual jutsu quer aprender? :')
                run_insert(f"INSERT INTO sabe_jutsu(nome_jutsu,nome_atacante) VALUES('{entradajutsu}','{player_name}');")
        elif tecla == '0':
            exit_game()
            return
        else:
            print('Opção inválida, tente novamente.\n\n')
            continue

        clean_bash()

def exit_game():
    clean_bash()
    print(r'''exit
    ''')



def create_new_player():
    print_subtitle('CRIAR NOVO JOGO')
    while True:
        player_name = input(
            'Insira o nome do personagem (ou insira 0 para voltar): ')
        new_treinador = insert_new_personagem(player_name)
        run_insert(f"INSERT INTO atacante (nome_atacante,nivel,vida,chakra,defesa,ataque,id_inventario,tipo) VALUES('{player_name}', 30, 100, 90, 50, 80, NULL, 'inimigo');")
        run_insert(f"INSERT INTO personagem_principal(nome_personagem,dinheiro,experiencia,descricao) VALUES('{player_name}',0,0,'personagem jogavel');")
        if new_treinador == []:
            print(
                'Algo deu errado enquanto um novo treinador era criado. Tente novamente\n\n')
            return ''

        return player_name


def batalha(player_name):
    playerData=run_query_fetchone(f"SELECT * from personagem WHERE nome='{player_name}'")
    query_response_instancia_inimigo = run_query_fetchone(f"SELECT * from instancia_inimigo where nome_regiao='{playerData['nome_regiao']}'")
    query_response = run_query_fetchall(f"SELECT * from atacante where nome_atacante='{query_response_instancia_inimigo['nome_inimigo']}'")
    playerData=run_query_fetchone(f"SELECT * from atacante WHERE nome_atacante='{player_name}'")
    breakpoint()
    print('lista de lutadores')
    for item in query_response:
        print(item['nome_atacante'])
    query_response=input('Informe o nome do jogador que deseja lutar:')
    query_response = run_query_fetchone(f"SELECT * from atacante where nome_atacante='{query_response}'")
    print(f"'Deseje lutar com '{query_response['nome_atacante']}'?: sim ou nao")
    if input()=='sim':
        while(query_response['vida']>=0 and playerData['vida']>=0):
            breakpoint()
            entrada=input('Ataque normal(1) e ataque de chakra(2)')
            if entrada=='1':
                playerData['vida']=playerData['vida']-query_response['ataque']
                # mudarVida(playerData['vida'],playerData['nome_atacante'])
                query_response['vida']=query_response['vida']-playerData['ataque']
                # mudarVida(query_response['vida'],query_response['nome_atacante'])
            if entrada=='2':
                query_sabe_jutsu = run_query_fetchone(f"SELECT * from sabe_jutsu where nome_atacante='{playerData['nome']}'")
                query_sabe_jutsu=run_query_fetchone(f"SELECT FROM jutsu where nome = '{query_sabe_jutsu['nome_jutsu']}'")
                playerData['vida']=playerData['vida']-query_response['ataque']
                query_response['vida']=query_response['vida']-query_sabe_jutsu['dano']
            print(f"vida do jogador principal {playerData['vida']} vida do inimigo {query_response['vida']}")
        # if query_response['vida']>0 and playerData['vida']<0:
        #     run_insert(f"INSERT INTO batalha (nome_personagem_principal,nome_inimigo,id_instancia_inimigo,tempo_decorrido,resultado)VALUES ('{playerData['nome']}', '{query_response['ataque']}', '{query_response_instancia_inimigo['id']}, 200, 'perdeu');")
        #     break
        if query_response['vida']>0 and playerData['vida']<0:
            run_insert(f"INSERT INTO batalha (nome_personagem_principal,nome_inimigo,id_instancia_inimigo,tempo_decorrido,resultado)VALUES ('{playerData['nome_atacante']}', '{query_response['nome_atacante']}', '{query_response_instancia_inimigo['id']}', 200, 'derrota');")
            return