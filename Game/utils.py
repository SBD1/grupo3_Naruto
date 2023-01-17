from os import system, name
import pprint


def print_prompt(message):
    print(f' # {message}')


def print_title(message):
    tlen = 70
    mlen = len(message)
    dlen = tlen - mlen - 2
    if(dlen % 2 != 0):
        dlen += 1
    dlen /= 2

    print('=======================================================================')
    for i in range(int(dlen)):
        print(' ', end='')
    print(' ', end='')
    print(message, end='')
    print(' ', end='')
    for i in range(int(dlen)):
        print(' ', end='')
    print('\n=======================================================================')


def print_subtitle(message):
    tlen = 70
    mlen = len(message)
    dlen = tlen - mlen - 4
    if(dlen % 2 != 0):
        dlen += 1
    dlen /= 2
    print('+', end='')
    for i in range(int(dlen)):
        print('-', end='')
    print(f' {message} ', end='')
    for i in range(int(dlen)):
        print('-', end='')
    print('+')


def count_dict_amount(keys: list, dictlist: list, param: str):
    quantity = {}
    for key in keys:
        quantity[str(key)] = 0
    for elem in dictlist:
        quantity[elem[param]] += 1
    return quantity


def clean_bash():
    if name == 'nt':
        _ = system('cls')
    else:
        _ = system('clear')


def print_prettier_dict(dict):
    pp = pprint.PrettyPrinter(indent=4)
    pp.pprint(dict)
