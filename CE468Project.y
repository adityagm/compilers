%{
	#include <stdio.h>
	#include <stdlib.h>
	extern FILE *yyin;
	int yylineno = 0;
	
%}

%verbose
%error-verbose 
%token PLA TRS BEG DEFINE AS COM PLACE TRANSITION 
%token NET INP OUT CON VIA MARK LOOP IF TOKEN THEN
%token FIRE EN FAV DISP UNTIL HAS SEMI IS TO NUM
%token OVER WITH END MARKING

%start open

%%
open: open begin | begin;

begin: BEG 
	 |declaration 
	 | init 
	 | mark 
	 | func 
	 | end
	 ;

declaration: DEFINE place name SEMI 
	 | DEFINE transitions name SEMI
	 ;

place: PLA 
	 | PLA com place
	 ;

com: COM | ;

transitions: TRS  
	 | TRS COM transitions
	 ;

name: AS PLACE 
	 | AS TRANSITION 
	 ;

init: pla IS NET INP SEMI 
	| pla IS NET OUT SEMI 
	| pla IS INP TO trs SEMI
	| trs IS CON TO trs VIA pla SEMI 
	;
	
pla: PLA 
	| PLA COM pla
	;
	
trs: TRS 
	| TRS COM trs
	;
	
mark: MARK pla WITH NUM TOKEN SEMI ;

func: loop 
	| ifstmt 
	| priority
	| display
	;

loop: LOOP 
	| UNTIL pla HAS NUM ; 

ifstmt: IF trs IS EN THEN FIRE trs SEMI ;

priority: FAV trs OVER trs SEMI ;

display: DISP MARKING ;

end: END ;

%%
int yyerror(const char *str)
{
	fprintf(stderr,"error: %s\n, %d",str,yylineno);
}

int yywrap()
{
	return 1;
}

int main(int argc, char *argv[])
{	
	int token; 
	char yytext;
    ++argv, --argc; 
    if (argc > 0) {
        yyin = fopen(argv[0], "r");
    } else {
        yyin = stdin;
    }
    yyparse();
	while ((token = yylex()) !=0)
		printf("token: %d (%s)\n", token, yytext);
    return 0;
}
