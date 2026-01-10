lexer grammar AerellLexer;

fragment ESC_SEQ: '\\' . ;

// Comments and whitespace
WS: [ \t\n\r\f]+ -> skip ;
CMNT: '#' ~[\r\n]* -> skip ;

// Keywords
I32: 'i32' ;
F32: 'f32' ;
CHR: 'chr' ;
STR: 'str' ;

// Symbols
LPAREN: '(' ;
RPAREN: ')' ;
PLUS: '+' ;
MINS: '-' ;
ASTRK: '*' ;
SLSH: '/' ;

// Literals
INTL: '-'? [0-9]+ ;
FLTL: '-'? [0-9]+ '.' [0-9]+ ;
CHRL: '\'' ( ESC_SEQ | ~('\'') )? '\'';
STRL: '"' ( ESC_SEQ | ~('"') )* '"';

// Others
IDENT: [a-zA-Z_][a-zA-Z0-9_]* ;