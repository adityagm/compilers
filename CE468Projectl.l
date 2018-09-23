%{
	#include <stdio.h>
	#include "CE468Project.tab.h"
	
	YYSTYPE yylval;
%}

alphabet [a-bA-B]
digit	[0-9]+

%%

[ \t]+		;
"P"{digit}	{printf("Place token\n\t"); return PLA;}
"T"{digit}	{printf("Transition token\n\t"); return TRS;}
{digit}		{return NUM;}
"begin"		{return BEG;}
"define"	{return DEFINE;}
"as"		{return AS;}
","			{return COM;}
"place"		{return PLACE;}
"transition"	{return TRANSITION;}
"is"		{return IS;}
"net"		{return NET;}
"input"		{return INP;}
"to"		{return TO;}
"output"	{return OUT;}
"connected"	{return CON;}
"via"		{return VIA;}
"mark"		{return MARK;}
"loop"		{return LOOP;}
"if"		{return IF;}
"token"		{return TOKEN;}
"then"		{return THEN;}
"fire" 		{return FIRE;}
"enabled"	{return EN;}
"favour"	{return FAV;}
"over"		{return OVER;}
"display"	{return DISP;}
"marking"	{return MARKING;}
"until"		{return UNTIL;}
"has"		{return HAS;}
"with"		{return WITH;}
";"			{return SEMI;}
"end"		{return END;}
%%


