%{
#include <stdio.h>
#include <stdlib.h>
int yyerror(const char *);
extern FILE *yyin;
int yylineno = 0;
%}
%error-verbose

%union YYSTYPE {int int_num; float float_num; char name;}

%token ASN MINUS PLUS MUL DIV LT GT LTE GTE EQV NE
%token IF THEN ELSE UNTIL ENDIF LOOP WHILE END PRINT
%token <int_num> INUM
%token <float_num> FNUM
%token <name> VAR
%left '=' MINUS PLUS MUL DIV LT GT LTE GTE EQV NE
%start grammar

%%

grammar: | grammar input;

input: assignment | display | operation ;

assignment: VAR '=' value ';' ;

operation: operation PLUS value ';'
	| operation MINUS value ';'
	| operation MUL value ';'
	| operation DIV value ';'
	| ifloop 
	| loop 
	| condition
	| display 
	;
	
ifloop: IF '(' condition ')' THEN ':' operation ELSE operation ENDIF ;

loop: until | while ;

until: LOOP operation UNTIL '(' condition ')' ;

while: WHILE '(' condition ')' whileoperation END ;
	
condition: condition LT value 
	| condition GT value
	| condition LTE value
	| condition GTE value
	| condition EQV value
	| condition NE value
	| value
	;
	
display: PRINT value ';';

whileoperation: | whileoperation operation;

value: INUM | FNUM | VAR;

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