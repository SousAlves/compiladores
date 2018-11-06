parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}

program: CLASS PROGRAM LCURLY field_decl* method_decl* RCURLY;

tipo_method: type ID;

field_decl: (tipo_method (VIRG tipo_method)* | tipo_method LCOLCH int_literal RCOLCH (VIRG tipo_method LCOLCH int_literal RCOLCH)*)PVIRG;

method_decl: (type | VOID) ID LPAR (tipo_method(VIRG tipo_method)*)? RPAR block;

block: LCURLY (var_decl)* (statement)* RCURLY;

var_decl: tipo_method(VIRG ID)* PVIRG;

type: INT|BOOLEAN;

statement: location assign_op expr PVIRG
	   | method_call PVIRG
	   | IF LPAR expr RPAR block (ELSE block)?
	   | FOR id PERTENCE expr VIRG expr block
	   | RETURN expr? PVIRG
	   | BREAK PVIRG
	   | CONTINUE PVIRG
	   | block;

assign_op: PERTENCE | MAISIG | MENOSIG ;

method_call: ID LPAR (expr (VIRG expr)*)? RPAR | CALLOUT LPAR string_literal (VIRG callout_arg(VIRG callout_arg)*)? RPAR;

location: id | id LCOLCH expr RCOLCH;

expr: location
	|method_call
	|literal
	|expr bin_op expr
	|MENOS expr
	|EXCLAMACAO expr
	|LPAR expr RPAR;

callout_arg: expr | string_literal;

bin_op: arith_op | rel_op | eq_op | cond_op;

arith_op: MAIS | MENOS | MULT | PERC | DIV;

rel_op : MENORQ | MAIORQ | MENORIG | MAIORIG;

eq_op: IGUAL|DIF;

cond_op: AND|OR;

literal : int_literal | char_literal | bool_literal;

int_literal : NUM | HEXADECIMAL;

id: ID | ID LCOLCH? int_literal+ RCOLCH?;
string_literal : STRING;

char_literal: CHAR;

bool_literal: BOOLEANLITERAL;

