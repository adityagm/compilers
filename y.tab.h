
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     ASN = 258,
     MINUS = 259,
     PLUS = 260,
     MUL = 261,
     DIV = 262,
     LT = 263,
     GT = 264,
     LTE = 265,
     GTE = 266,
     EQV = 267,
     NE = 268,
     IF = 269,
     THEN = 270,
     ELSE = 271,
     UNTIL = 272,
     ENDIF = 273,
     LOOP = 274,
     WHILE = 275,
     END = 276,
     PRINT = 277,
     INUM = 278,
     FNUM = 279,
     VAR = 280
   };
#endif
/* Tokens.  */
#define ASN 258
#define MINUS 259
#define PLUS 260
#define MUL 261
#define DIV 262
#define LT 263
#define GT 264
#define LTE 265
#define GTE 266
#define EQV 267
#define NE 268
#define IF 269
#define THEN 270
#define ELSE 271
#define UNTIL 272
#define ENDIF 273
#define LOOP 274
#define WHILE 275
#define END 276
#define PRINT 277
#define INUM 278
#define FNUM 279
#define VAR 280




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union 
/* Line 1676 of yacc.c  */
#line 10 "project_parser.y"
YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 10 "project_parser.y"
int int_num; float float_num; char name;


/* Line 1676 of yacc.c  */
#line 109 "y.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


