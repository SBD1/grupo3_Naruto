from time import sleep
from database import get_user_info, insert_new_personagem,mudarRegiaoUsuario,run_query_fetchone,run_update
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
        print('0 - Sair')
        tecla = input('Insira sua escolha: ')
        print()
        if tecla == '1':
            player_name = create_new_player()
            if player_name == '':
                print('\n\n')
                continue
        elif tecla == '2':
            # lista conexoes disponiveis
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
            sleep(10)
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
        if new_treinador == []:
            print(
                'Algo deu errado enquanto um novo treinador era criado. Tente novamente\n\n')
            return ''

        return player_name
