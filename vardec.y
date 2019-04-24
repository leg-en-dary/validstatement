%{
	#include<stdio.h>
	#include"y.tab.h"
%}

%token ID num NEW key COMMA SC open_b close_b EQ

%%
//int a;
//int []a=new int[3];
//int a,b;
start : key varlist SC							{printf("Given Statement is Valid !!!");}
      | key open_b close_b ID EQ NEW key open_b num close_b SC		{printf("Given Statement is Valid !!!");}
      | varlist:ID COMMA varlist | ID;

%%

int main()
{
	printf("enter the text:-");
	yyparse();
	return 0;
}

int yywrap()
{
	return 1;
}

yyerror(char *s)
{
	fprintf(stderr,"%s",s);
}

