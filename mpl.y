
%token INTEGER FLOAT_NUM LETTER CHAR FLOAT  VARIABLE_NAME INT SENTENCE INPUT ARROW
%token PRINT LOOP IF END COMMAND
%nonassoc IFL 
%nonassoc ELSE  
%left OR AND EQ BIG SMALL
%left '+' '-'
%left '*' '/'
%{
#include <stdio.h>
int yyerror(char *);
int yylex(void);

%}
%%

program:
statements 
;

statements:
statements statement 
|
;

statement:
expr ';'
|INT VARIABLE_NAME '=' expr';'
|FLOAT VARIABLE_NAME '=' expr ';'
|CHAR VARIABLE_NAME '=' LETTER ';'
|VARIABLE_NAME '=' expr ';'	
|INT VARIABLE_NAME ';'
|FLOAT VARIABLE_NAME ';'
|CHAR VARIABLE_NAME ';'	
|PRINT  sentences ';'
|IF logic_expr  statement      %prec IFL
|IF logic_expr  statement  ELSE statement 
|LOOP logic_expr statement
|':' statement_list END
|';'	 
|COMMAND 
;



sentences:
sentences ARROW expr
|sentences ARROW SENTENCE
|SENTENCE
|expr
;

statement_list:
statement_list statement 
|statement 
;




expr: 
term
|expr '+' expr
|expr '-' expr
|expr '*' expr
|expr '/' expr
|'('expr')'

;

logic_expr:
logic_expr OR logic_expr
|logic_expr AND logic_expr
|logic_expr EQ logic_expr
|logic_expr BIG logic_expr
|logic_expr SMALL logic_expr
|'('logic_expr OR logic_expr ')'
|'('logic_expr AND logic_expr ')'
|'('logic_expr EQ logic_expr ')'
|'('logic_expr BIG logic_expr ')'
|'('logic_expr SMALL logic_expr ')'
|expr
|LETTER
|'('LETTER')'
;


term:
INPUT
|INTEGER 
|FLOAT_NUM
|VARIABLE_NAME
;



%%

#include "lex.yy.c"
int main() {
yyparse();
if(yylex()==0)
printf("OK\n");
   return 0;
}
int yyerror( char *s ) { fprintf( stderr, "%s\n", s); }
