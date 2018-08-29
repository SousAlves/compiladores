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

LCURLY : '{';
RCURLY : '}';

ID  :
  ('a'..'z' | 'A'..'Z')+;

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\'' (ESC| ALFABETO| IDC| NUMEROS) '\'';
STRING : '"' (ESC|~'"')* '"';

fragment
ESC :  '\\' ('n'| '"'| 't' | '\\');
IDC :
    (' '| '!' | '#' | '$' | '%' | '&' | '(' | ')' | '*' | '+' |
         ','| '-' | '.' | '/' | ':' | ';' | '<' | '=' | '>' | '?' | '@' |
         '['| ']' | '^' | '_' | '`' | '{' | '|' | '}' | '~');

NUMEROS : ('0'..'9');
ALFABETO  : ('a'..'z' | 'A'..'Z');
