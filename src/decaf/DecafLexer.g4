lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
  TK_class
}

IF : 'if';
ELSE : 'else';
BOOLEAN : 'boolean';
BOOLEANLITERAL : 'true' | 'false';
BREAK : 'break';
CALLOUT : 'callout';
CLASS : 'class';
CONTINUE : 'continue';
FALSE : 'false';
FOR : 'for';
INT : 'int';
RETURN : 'return';
TRUE : 'true';
VOID : 'void';

LCURLY : '{';
RCURLY : '}';

LPAR : '(';
RPAR : ')';
HIFEN : '-';
VIRG : ',';
MAIS : '+';
MENOS : '-';
MULT : '*';
DIV : '/';
PERC : '%';
PVIRG : ';';
LCOLCH : '[';
RCOLCH : ']';
OR : '||';
IGUAL : '==';
PERTENCE : '=';
DIF : '!=';
AND : '&&';
MENORQ : '<';
MAIORQ : '>';
MAIORIG : '>=';
MENORIG :'<=';

ID  :  (ALFABETO | '_')(ALFABETO | NUMERO | '_')*;

WS_ : (' ' | '\n' | '\t') -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\'' (ESC| ALFABETO | NUMERO | IDCHAR) '\'';
STRING : '"' (IDCSTR | ALFABETO | NUMERO)+ '"';
HEXADECIMAL : '0x'(NUMERO | ALFAHEX)+;
NUM : (NUMERO)+;


fragment ALFABETO  : ('a'..'z' | 'A'..'Z');

fragment NUMERO : ('0'..'9');

fragment ALFAHEX : ('a'..'f' | 'A'..'F');

fragment ESC :  '\\' ('n'| '"'| 't' | '\\');

fragment IDCSTR : (' '| '!' | '#' | '$' | '%' | '&' | '(' | ')' | '*' | '+' | ','| '-' | '.' | '/' | ':' | ';' | '<' | '=' | '>' | '?' | '@'| ']' | '^' | '_' | '`' | '{' | '|' | '}' | '~' | '\\\'' | '\t' | '"' | '\\' );

fragment IDCHAR: (' '| '!' | '#' | '$' | '%' | '&' | '(' | ')' | '*' | '+' | ','| '-' | '.' | '/' | ':' | ';' | '<' | '=' | '>' | '?' | '@'| ']' | '^' | '_' | '`' | '{' | '|' | '}' | '~');