boostrapping
ohmGrammarDefinition

	^ 'Ohm {

  Grammars
    = Grammar*

  Grammar
    = GrammarHeader "{" Rule* "}"

  GrammarHeader
    = GrammarName SuperGrammar?

  GrammarName
    = ident "." ident -- qualified
    | ident           -- unqualified

  SuperGrammar
    = "<:" ident "." ident  -- qualified
    | "<:" ident              -- unqualified

  Rule
    = ident ruleDescr? "="  Alt  -- define
    | ident ruleDescr? ":=" Alt  -- override
    | ident            "+=" Alt  -- extend

  Alt
    = Term "|" Alt  -- rec
    | Term

  Term
    = Seq caseName -- inline
    | Seq

  Seq
    = Iter*

  Iter
    = Pred "*"  -- star
    | Pred "+"  -- plus
    | Pred "?"  -- opt
    | Pred

  Pred
    = "~" Base  -- not
    | "&" Base  -- lookahead
    | Base

  Base
    = ident ~(ruleDescr? "=" | ":=" | "+=")  -- application
    | oneCharTerminal ".." oneCharTerminal -- range
    | ohmTerminal   -- terminal
    | "(" Alt ")"                            -- paren

  ruleDescr
    = "(" ruleDescrText ")"

  ruleDescrText
    = (~")" any)*

  caseName
    = "--" (~"\n" space)* name (~"\n" space)* ("\n" | &"}")

  name 
    = nameFirst nameRest*

  nameFirst
    = "_"
    | letter

  nameRest
    = "_"
    | alnum

  ident 
    = ~keyword name

  keyword
    = "undefined" ~nameRest  -- undefined
    | "null" ~nameRest       -- null
    | "true" ~nameRest       -- true
    | "false" ~nameRest      -- false

  ohmTerminal
    = keyword | string | regExp | number

  oneCharTerminal
    = "\"" terminalChar "\""

  string 
    = "\"" terminalChar* "\""

  terminalChar
    = escapeChar
     | ~"\\" ~"\"" ~"\n" any  

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

  regExp 
    = "/" reCharClass "/"

  reCharClass
    = "\\p{" /[A-Za-z]/+ "}"    -- unicode
    | "[" ("\\]" | ~"]" any)* "]" -- ordinary

  number
    = "-"? digit+

  comment
   = "//" (~"\n" any)* "\n"  -- singleLine
    | "/*" (~"*/" any)* "*/"  -- multiLine

  space
   += comment

}'
