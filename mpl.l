%{
#include <stdlib.h>
#include <stdio.h>
int yyerror(char *);

%}
%%

"num->"  {return INT ;}

"letter->"  {return CHAR;}

"float->"  {return FLOAT;}

"print"		return PRINT;

"or"		return OR;

"and"		return AND;

"equal?"	return 	EQ;

"bigger?"	return BIG;

"smaller?"	return SMALL;

"if"		return IF;

"else"		return ELSE;

"end"		return END;

"loop"		return LOOP;

"input()"		return INPUT;		

"->" 	return ARROW;

[a-zA-Z][A-Za-z1-9_]* {return VARIABLE_NAME;}

[-]?[0-9]+[\.][0-9]+ return FLOAT_NUM;

[-]?[0-9]+ {return INTEGER;}

[-+()=/*()] {return *yytext; }

\'[a-zA-Z0-9]\'	return LETTER;


[=;:] {return *yytext;}

[ \t\n] ;

"#"[a-zA-Z0-9.?_:=()/&%+!-*<>|' \t\n\\]*"##"  ; return COMMAND;

["][a-zA-Z0-9.?_:=()/&%+!-*<>|' \t\n\\]*["] 	return SENTENCE;

. yyerror("invalid character");
%%
int yywrap(void) {
return 1;
}
