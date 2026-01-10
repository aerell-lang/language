parser grammar AerellParser;

options {
	tokenVocab = AerellLexer;
}

aerell: ( stmt | expr ) * EOF
      ;

stmt: IDENT type expr?
    ;

expr: add_or_sub
    | IDENT expr?
    ;

type: I32
    | F32
    | CHR
    | STR
    ;

add_or_sub: mul_or_div ( ( PLUS | MINS ) mul_or_div ) * ;

mul_or_div: primary ( ( ASTRK | SLSH ) primary ) * ;

primary: literal
       | LPAREN expr RPAREN
       ;

literal: INTL
       | FLTL
       | CHRL
       | STRL
       ;