serialized grammar
serializedGrammar
^ 'Ohm <: BuiltInRules {

Alt
    = Term "|" Alt  -- rec
    | Term

Base
    = ident Params? ~(ruleDescr? "=" | ":=" | "+=")  -- application
    | oneCharTerminal ".." oneCharTerminal -- range
    | ohmTerminal   -- terminal
    | "(" Alt ")"                           -- paren

Formals
    = "<" FormalsList ">"

FormalsList
    = ident ("," ident)*

Grammar
    = GrammarHeader "{" Rule* "}"

GrammarHeader
    = GrammarName SuperGrammar?

GrammarName
    = ident "." ident -- qualified
    | ident           -- unqualified

Grammars
    = Grammar*

Iter
    = Pred "*"  -- star
    | Pred "+"  -- plus
    | Pred "?"  -- opt
    | Pred

Lex
  = "#" Base -- lex
   | Base

Params
    = "<" ParamsList ">"

ParamsList
    = Seq ("," Seq)*

Pred
    = "~" Lex  -- not
    | "&" Lex  -- lookahead
    | Lex

Rule
    = ident Formals? ruleDescr? "="  Alt  -- define
    | ident  Formals? ruleDescr? ":=" Alt  -- override
    | ident  Formals?             "+=" Alt  -- extend
    | ident  Formals?            "+=" Alt  -- extend

Seq
    = Iter*

SuperGrammar
    = "<:" ident "." ident  -- qualified
    | "<:" ident              -- unqualified

Term
    = Seq caseName -- inline
    | Seq

caseName
    = "--" (~"\n" space)* name (~"\n" space)* ("\n" | &"}")

comment
   = "//" (~"\n" any)* "\n"  -- singleLine
    | "/*" (~"*/" any)* "*/"  -- multiLine

escapeChar
    = "\\\\"                                     -- backslash
    | "\\\""                                      -- doubleQuote
    | "\\\''"                                      -- singleQuote
    | "\\b"                                      -- backspace
    | "\\n"                                      -- lineFeed
    | "\\r"                                      -- carriageReturn
    | "\\t"                                      -- tab
    | "\\u" hexDigit hexDigit hexDigit hexDigit  -- unicodeEscape
    | "\\x" hexDigit hexDigit                    -- hexEscape

ident 
    = ~keyword name

keyword
    = "undefined" ~nameRest  -- undefined
    | "null" ~nameRest       -- null
    | "true" ~nameRest       -- true
    | "false" ~nameRest      -- false

name 
    = nameFirst nameRest*

nameFirst
    = "_"
    | letter

nameRest
    = "_"
    | "-"
    | alnum

number
    = "-"? digit+

ohmTerminal
    = keyword | string | regExp | number

oneCharTerminal
    = "\"" terminalChar "\""

reCharClass
    = "\\p{" /[A-Za-z]/+ "}"    -- unicode
    | "[" ("\\]" | ~"]" any)* "]" -- ordinary

regExp 
    = "/" reCharClass "/"

ruleDescr
    = "(" ruleDescrText ")"

ruleDescrText
    = (~")" any)*

space
   += comment

string 
    = "\"" terminalChar* "\""

terminalChar
    = escapeChar
     | ~"\\" ~"\"" ~"\n" any}'