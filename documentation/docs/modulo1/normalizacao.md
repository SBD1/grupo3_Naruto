# Normalização do Modelo Relacional

## 1ª Forma Normal - Atributo Composto

Para que o Modelo Relacional atenda a primeira forma normal, todos atributos previamente compostos no DER devem ser separados para que eles sejam monovalorados e atômicos. Como no DER criado para este projeto já não haviam atributos compostos o projeto já se encontra normalizado, conforme a 1ª Forma Normal.

## 2ª Forma Normal

Em relação a 2ª Forma Normal, ela diz que nenhum atributo comum pode depender parcialmente de qualquer chave. O projeto apresenta chaves compostas nas suas entidades fracas, mas essas continuam respeitando a 2ª Forma Normal, pois em nenhum dos casos há um atributo comum que dependa parcialmente dessas chaves.

## 3ª Forma Normal

A 3ª Forma Normal diz que atributos comuns não devem depender transitivamente de qualquer super-chave, conforme foi projetado o Modelo Relacional, não há nenhum caso onde um atributo comum poderia ter esse tipo de dependencia, então nesse caso o projeto também está normalizado quanto a essa forma.

## Forma Normal de Boyce-Codd

A Forma Normal de Boyce-Codd diz que para que a normalização aconteca, não podem haver dependencias funcionais que não sejam triviais em algo que não seja um super conjunto de uma chave candidata, observando o Modelo Relacional é possível ver que esta forma normal também está sendo respeitada, então o projeto continua normalizado.

## 4ª Forma Normal

Para que o Modelo Relacional esteja de acordo com a 4ª Forma Normal, não podem ocorrer dependências multivaloradas, para que não ocorram redundâncias desnecessárias. Nessa caso o projeto também está respeitando está forma normal e pode ser considerado completamente Normalizado.

## Histórico de versões

|    Data    | Versão |             Descrição                      |        Autor             |
| :--------: | :----: | :----------------------------------------: | :----------------------: |
| 19/12/2022 | `1.0`  |    Criação do documento de normalização    | João Coelho e Caio Vitor |