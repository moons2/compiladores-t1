<h1 style="text-align:center;align:center;"> Analisador Léxico para a linguagem LA (Linguagem Algoritmica) - Trabalho 1</h1>

<small>Professor: Daniel Lucrédio</small>

<small>Disciplina: Compiladores 1</small>

## Sumário

[Pré requisitos](#pré-requisitos)

[Compilação](#compilação)

[Execução](#execução)

[Exemplo](#exemplo)

[Autores](#autores)

## Pré requisitos

Este programa faz uso de Antlr com Python, desta forma é necessario ter instalado:

### [python3](https://www.python.org/ftp/python/3.9.2/python-3.9.2-amd64.exe)

Você pode verificar se a instalação foi realizada com exito digitando no terminal:

```terminal
python3 --version
```

:warning: **ATENÇÃO** :warning: : se o comando `python3`não for reconhecido, use`python`ou verifique se o comando`python3` está incluso nas variáveis de ambiente do seu sistema!

### Antlr para python

Após ter instalado `python3`, instale o Antlr para python através do terminal com o comando:

```terminal
pip install antlr4-python3-runtime
```

### Qualquer versão Java JDK 11.0.2 ou superior.

Você pode verificar se tem o Java instalado em seu sistema obtendo a versão através do terminal com o seguinte comando:

```terminal
java -version
```

### Este repositorio

faça o download deste repositorio clicando em **code > Download Zip** e descompate em um diretorio local ou através do terminal com:

```terminal
git clone https://github.com/moons2/compiladores-t1
```

## Compilação

Uma vez cumprido os passos presentes em [Pré requisitos](#pré-requisitos), precisamos compilar a gramática regular `LALexer.g4`, abra o terminal na pasta `/src` e digite:

```terminal
java -jar antlr-4.9.1-complete.jar -Dlanguage=Python3 LALexer.g4
```

Nenhuma mensagem foi exibida no terminal, mas foram gerados alguns arquivos como `LALexer.py`, `LALexer.interp` e `LALexer.tokens`

:+1: Compilação realizada com exito!

## Execução

Por fim, para executar nosso analisador léxico basta inserir o seguinte comando no terminal:

```terminal
python3 main.py path_arquivo_entrada.txt path_arquivo_saida.txt
```

onde _path_arquivo_entrada.txt_ é o caminho até o arquivo a ser analisado lexicamente e _path_arquivo_saida.txt_ é o caminho onde o resultado da analise lexica será gerado.

## Exemplo

Um exemplo da execução do programa via linha de comando usando caminho absoluto:

```terminal
python3
```

## Autores

Luan V. Moraes da Silva - 744342

Guilherme Servidoni - 727339

Alisson Roberto Gomes - 725721
