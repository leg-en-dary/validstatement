%{
	#include<stdio.h>
	#include"y.tab.h"
%}

%%

int|float|char|double			return key;
new					return NEW;
"["					return open_b;
"]"					return close_b;
[a-zA-Z]+[a-zA-Z0-9]*     		return ID;
[;]					return SC;
[,]					return COMMA;
[0-9]+					return num;
[=]					return EQ;
[\n]					return 0;

%%


