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

IF : 'if';
ELSE : 'else';
BOOLEAN : 'boolean';
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

ID  :
  ('a'..'z' | 'A'..'Z')+;

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\'' (ESC| ALFANUMERICO| IDCHAR) '\'';
STRING : '"' (IDSTR | ALFANUMERICO)+ '"';
HEXADECIMAL : '0x'(NUMERO | ALFAHEX)+;
OP : (OPERADORES);


fragment
ESC :  '\\' ('n'| '"'| 't' | '\\');

fragment
OPERADORES : 
	('+' | '-' | '*' | '<' | '<=' | '!=' | '&&');


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
