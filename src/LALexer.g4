// titulo:
//    Gramatica regular da Linguagem Algoritmica(LA)
//    TRABALHO 1 - COMPILADORES 1
//
// autores:
//    Luan V. Moraes da Silva - 744342
//    Guilherme Servidoni - 727339
//    Alisson Roberto Gomes - 725721
    
lexer grammar LALexer;

fragment
LETRA: 'A'..'Z' | 'a'..'z';

fragment
DIGITO: '0'..'9';

// definicao de erro de comentario
ERR_COMENT: ('{' ~('}')* '\n');

COMENTARIO: '{' ~('\n'|'\r'|'{'|'}')* '}' -> skip;

// definicao de erro de cadeia
ERR_CADEIA: '"' ~('"')* '\n';

WS: (' ' | '\t' | '\n' | '\r') -> skip;

PALAVRA_RESERVADA: 'algoritmo' | 'fim_algoritmo' | 'declare' | 'constante' | 'tipo' | 'literal' 
   | 'inteiro' | 'real' | 'logico' | 'verdadeiro' | 'falso' | 'registro' | 'fim_registro'
   | 'procedimento' | 'fim_procedimento' | 'funcao' | 'fim_funcao' | 'leia' | 'escreva'
   | 'se' | 'entao' | 'senao' | 'fim_se' | 'caso' | 'fim_caso' | 'seja' | 'para' | 'fim_para'
   | 'ate' | 'faca' | 'enquanto' | 'fim_enquanto' | 'retorne' | 'var' ;

// endereco e concatenacao
OP_UNARIO: '&' | ',';

OP_ARIT: '+' | '-' | '*' | '/' | '%' | '^';

OP_RELACIONAL: '>' | '>=' | '<' | '<=' | '<>' | '=';

OP_LOGICO: 'nao' | 'ou' | 'e';

OUTRO_OP: '.' | '..';

DECLARADOR: ':';

ATRIBUIDOR: '<-';

DELIMITADOR: '(' | ')' | '[' | ']';

IDENT: (LETRA | '_') (LETRA | DIGITO | '_')*;

NUM_INT: (DIGITO)+;

NUM_REAL: (DIGITO)+ '.' (DIGITO)+;

CADEIA: '"' ( '\\"' | ~('"' | '\\' | '\n') )* '"';

// simbolo nao identificado
ERR_SIMBOLO: . ;