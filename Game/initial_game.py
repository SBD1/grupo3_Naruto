from time import sleep
from database import get_user_info, insert_new_personagem,mudarRegiaoUsuario,run_query_fetchone,run_update,run_insert,run_query_fetchall,mudarVida
from utils import *
from datetime import *

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
        print('4 - Procurar na regiao')
        print('5 - Aprender Jutsu')
        print('6 - View de Inimigo e PersonagemPrincipal')
        print('7 - View as batalhas realizadas')
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
            sleep(10)
        elif tecla== '4':
            input4=input('Procurar lutador(1)|Procurar item(2)')
            if input4== '1':
                batalha(player_name)
            if input4== '2':
                BuscarItem(player_name)
        elif tecla== '5':
                jutsuData=run_query_fetchall(f"SELECT * from jutsu")
                for item in  jutsuData:
                    print(item['nome'])
                entradajutsu=input('qual jutsu quer aprender? :')
                run_insert(f"INSERT INTO sabe_jutsu(nome_jutsu,nome_atacante) VALUES('{entradajutsu}','{player_name}');")
        elif tecla=='6':
            print('Listando todos os Personagem Principais')
            dp=run_query_fetchall(f"SELECT * from dados_personagem")
            for item in dp:
                print(item)
            sleep(5)
            print('Listando todos os Inimigos')
            di=run_query_fetchall(f"SELECT * from dados_inimigo")
            for item in di:
                print(item)
            sleep(5)
        elif tecla=='7':
            print('Listando todas as batalhas')
            db=run_query_fetchall(f"SELECT * from dados_batalha")
            for item in db:
                print(item)
            sleep(5)
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
        run_insert(f"INSERT INTO inventario DEFAULT VALUES")
        id_inventario=run_query_fetchone(f"SELECT MAX(id) FROM inventario")
        run_insert(f"INSERT INTO atacante (nome_atacante,nivel,vida,chakra,defesa,ataque,id_inventario,tipo) VALUES('{player_name}', 30, 100, 90, 50, 80, '{id_inventario['max']}', 'personagem_principal');")
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
    print('lista de lutadores')
    for item in query_response:
        print(item['nome_atacante'])
    query_response=input('Informe o nome do jogador que deseja lutar:')
    query_response = run_query_fetchone(f"SELECT * from atacante where nome_atacante='{query_response}'")
    print(f"'Deseje lutar com '{query_response['nome_atacante']}'?: sim ou nao")
    if input()=='sim':
        ##Vida e ataque do jogador
        inimigo=run_query_fetchone(f" select  get_ataque_vida_personagem_do_personagemprincipal_ou_inimigo('{query_response_instancia_inimigo['nome_inimigo']}')")
        inimigo=inimigo['get_ataque_vida_personagem_do_personagemprincipal_ou_inimigo']
        inimigo=eval(inimigo)
        inimigo=TupleObject(*inimigo)

        ##Vida e ataque do jogador
        jogador=run_query_fetchone(f" select  get_ataque_vida_personagem_do_personagemprincipal_ou_inimigo('{player_name}')")
        jogador=jogador['get_ataque_vida_personagem_do_personagemprincipal_ou_inimigo']
        jogador=eval(jogador)
        jogador=TupleObject(*jogador)
        while(inimigo.vida>=0 and jogador.vida>=0):
            startfight=datetime.now()
            entrada=input('Ataque normal(1) e ataque de chakra(2)')
            if entrada=='1':
                jogador.vida=jogador.vida-inimigo.ataque
                inimigo.vida=inimigo.vida-jogador.ataque
            if entrada=='2':
                query_sabe_jutsu = run_query_fetchall(f"SELECT * from sabe_jutsu where nome_atacante='{playerData['nome_atacante']}'")
                for item in query_sabe_jutsu:
                    print(item)
                inputJutsu= input("Digite o nome do jutsu que deseja usar: ")
                query_sabe_jutsu=run_query_fetchone(f"SELECT * FROM jutsu where nome='{inputJutsu}'")
                jogador.vida=jogador.vida-inimigo.ataque
                inimigo.vida=inimigo.vida-query_sabe_jutsu['dano']
            clean_bash()
            print(f"vida do jogador principal {jogador.vida} vida do inimigo {inimigo.vida}")
        endfight=datetime.now()
        timefight=endfight-startfight
        if inimigo.vida>0 and jogador.vida<0:
            run_insert(f"INSERT INTO batalha (nome_personagem_principal,nome_inimigo,id_instancia_inimigo,tempo_decorrido,resultado)VALUES ('{playerData['nome_atacante']}', '{query_response['nome_atacante']}', '{query_response_instancia_inimigo['id']}', {timefight.seconds}, 'derrota');")
            return
        if inimigo.vida<0 and jogador.vida>0:
            run_insert(f"INSERT INTO batalha (nome_personagem_principal,nome_inimigo,id_instancia_inimigo,tempo_decorrido,resultado)VALUES ('{playerData['nome_atacante']}', '{query_response['nome_atacante']}', '{query_response_instancia_inimigo['id']}', {timefight.seconds}, 'vitoria');")
            return
        else:
            run_insert(f"INSERT INTO batalha (nome_personagem_principal,nome_inimigo,id_instancia_inimigo,tempo_decorrido,resultado)VALUES ('{playerData['nome_atacante']}', '{query_response['nome_atacante']}', '{query_response_instancia_inimigo['id']}', {timefight.seconds}, 'empate');")
            return


def BuscarItem(player_name):
    playerData=run_query_fetchone(f"SELECT * from personagem WHERE nome='{player_name}'")
    playerAtacante=run_query_fetchone(f"SELECT * from atacante WHERE nome_atacante='{player_name}'")
    instanciaitem=run_query_fetchall(f"SELECT * from instancia_item where nome_regiao ='{playerData['nome_regiao']}'")
    for item in  instanciaitem:
        print(item['nome_item'])
    ent=input('Qual item deseja pegar? ou 0 para sair: ')
    if (ent!='0'):
        run_update(f"UPDATE instancia_item SET id_inventario = '{playerAtacante['id_inventario']}' WHERE nome_item ='{ent}';")
    return

class TupleObject:
    def __init__(self, x, y):
        self.ataque = x
        self.vida = y

t = (80, 200)
obj = TupleObject(*t)
