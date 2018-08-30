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

CHAR : '\'' (ESC| ALFANUMERICO| IDCHAR) '\'';
STRING : '"' (IDSTR | ALFANUMERICO)+ '"';
HEXADECIMAL : '0x'(NUMERO | ALFAHEX)+;

fragment
ESC :  '\\' ('n'| '"'| 't' | '\\');


fragment
IDSTR :
    (' '| '!' | '#' | '$' | '%' | '&' | '(' | ')' | '*' | '+' |
         ','| '-' | '.' | '/' | ':' | ';' | '<' | '=' | '>' | '?' |
     '@'| ']' | '^' | '_' | '`' | '{' | '|' | '}' | '~' | '\\\'' | '\t' | '"' | '\\' );

fragment
IDCHAR:
    (' '| '!' | '#' | '$' | '%' | '&' | '(' | ')' | '*' | '+' |
         ','| '-' | '.' | '/' | ':' | ';' | '<' | '=' | '>' | '?' |
     '@'| ']' | '^' | '_' | '`' | '{' | '|' | '}' | '~');
 

fragment
ALFANUMERICO  : ('a'..'z' | 'A'..'Z' | '0'..'9');

fragment
ALFAHEX : ('a'..'f' | 'A'..'F');

fragment
NUMERO : ('0'..'9');
