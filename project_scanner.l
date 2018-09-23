%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
void yyerror(char *);
YYSTYPE yylval;
%}
%option noyywrap
white [ \t\n]+
digit [0-9]+
float [-]?{digit}[.][0-9]* 
alpha [a-z]
variable [a-z]
%%
{digit}	{yylval.int_num=atoi(yytext);return INUM;}
{float}	{yylval.float_num=atof(yytext);return FNUM;}
"-"	{return MINUS;}
"+"	{return PLUS;}
"*"	{return MUL;}
"/"	{return DIV;}
[;():=]	{return yytext[0];}
"<"	{return LT;}
">"	{return GT;}
"<="	{return LTE;}
">="	{return GTE;}
"=="	{return EQV;}
"!="	{return NE;}
"if"	{return IF;}
"then"	{return THEN;}
"else"	{return ELSE;}
"endif"	{return ENDIF;}
"loop"	{return LOOP;}
"until"	{return UNTIL;}
"while"	{return WHILE;}
"end"	{return END;}
"print"	{return PRINT;}
{variable} {yylval.name = yytext[0]; return VAR;}
.	{yyerror("unknown character");}
{white} {}
%%
