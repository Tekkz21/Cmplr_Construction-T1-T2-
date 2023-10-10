%{
#include <stdio.h>
%}

%%
[a-zA-Z_][a-zA-Z0-9_]* {
    printf("Valid identifier: %s\n", yytext);
}

. {
    printf("Invalid identifier: %s\n", yytext);
}

%%
int yywrap(){}
int main(int argc, char **argv) {
    yylex();
    return 0;
}