import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT, ISOLATION_LEVEL_SERIALIZABLE
from setup.setup_environment import get_database_and_cursor
import psycopg2.extras
import os

def mudarRegiaoUsuario(novaregiao, user_name):
    sql = f"UPDATE personagem SET nome_regiao = '{novaregiao}' WHERE nome ='{user_name}';"
    run_update(sql)

def get_user_info(nome_player):
    query_response = run_query_fetchone(
        f"SELECT * FROM personagem WHERE nome='{nome_player}';")
    return query_response

def run_query_fetchall(query):
    conn, cur = get_database_and_cursor()
    cur.execute(query)
    response = cur.fetchall()
    conn.commit()
    cur.close()
    conn.close()
    return response

def get_region_ByPersonagem(player_name_nome_regiao):
    query_response = run_query_fetchall(
        f"SELECT * from conecta where centro='{player_name_nome_regiao}'")
    items = []
    for item in query_response:
        items.append(dict(item))
    return items

def run_query_fetchone(query):
    conn, cur = get_database_and_cursor()
    cur.execute(query)
    response = cur.fetchone()
    conn.commit()
    cur.close()
    conn.close()
    return response


def run_update(query):
    conn, cur = get_database_and_cursor()
    conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
    cur.execute(query)
    conn.commit()
    cur.close()
    conn.close()


def run_insert(query):
    conn, cur = get_database_and_cursor()
    conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
    response = cur.execute(query)
    conn.commit()
    cur.close()
    conn.close()
    return response


def insert_new_personagem(player_name):
    try:
        run_insert(
            f"INSERT INTO personagem (nome,nome_regiao,tipo) VALUES('{player_name}','brasilia','atacante');"
        )
    except:
        return []

def run_delete(query):
    conn, cur = get_database_and_cursor()
    conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
    cur.execute(query)
    cur.close()
    conn.close()


def run_transaction(query):
    conn, cur = get_database_and_cursor()
    conn.set_isolation_level(ISOLATION_LEVEL_SERIALIZABLE)
    cur.execute(query)
    conn.commit()
    cur.close()
    conn.close()
