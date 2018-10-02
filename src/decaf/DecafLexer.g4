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
CALLOUT : 'callout';
PROGRAM: 'Program';
BREAK : 'break';
CLASS : 'class';
CONTINUE : 'continue';
RETURN : 'return';
VOID : 'void';

IF : 'if';
ELSE : 'else';
FOR : 'for';
INT : 'int';
BOOLEAN : 'boolean';
BOOLEANLITERAL : 'true' | 'false';

LCURLY : '{';
RCURLY : '}';
LCOLCH : '[';
RCOLCH : ']';
LPAR : '(';
RPAR : ')';

VIRG : ',';
PVIRG : ';';

MULT : '*';

DIV : '/';
MENOS : '-';
MAIS : '+';
PERC : '%';
EXCLAMACAO:'!';
AND : '&&';
OR : '||';

IGUAL : '==';
DIF : '!=';
MENORQ : '<';
MAIORQ : '>';	
MAIORIG : '>=';
MENORIG : '<=';
MAISIG:'+=';
MENOSIG:'-=';
PERTENCE : '=';

WS_ : (' ' | '\n' | '\t') -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

ID  :  (ALFABETO | '_')(ALFABETO | NUMERO | '_')*;
CHAR : '\'' (ESC| ALFABETO | NUMERO | IDCHAR) '\'';
STRING : '"' (IDCSTR | ALFABETO | NUMERO)+ '"';
NUM : (NUMERO)+;
HEXADECIMAL : '0x' (NUMERO | ALFAHEX);

fragment ALFABETO  : ('a'..'z' | 'A'..'Z');
fragment NUMERO : ('0'..'9');
fragment ALFAHEX : ('a'..'f' | 'A'..'F');
fragment ESC :  '\\' ('n'| '"'| 't' | '\\');
fragment IDCSTR : (' '| '!' | '#' | '$' | '%' | '&' | '(' | ')' | '*' | '+' | ','| '-' | '.' | '/' | ':' | ';' | '<' | '=' | '>' | '?' | '@'| ']' | '^' | '_' | '`' | '{' | '|' | '}' | '~' | '\\\'' | '\t' | '"' | '\\' );
fragment IDCHAR: (' '| '!' | '#' | '$' | '%' | '&' | '(' | ')' | '*' | '+' | ','| '-' | '.' | '/' | ':' | ';' | '<' | '=' | '>' | '?' | '@'| ']' | '^' | '_' | '`' | '{' | '|' | '}' | '~');
