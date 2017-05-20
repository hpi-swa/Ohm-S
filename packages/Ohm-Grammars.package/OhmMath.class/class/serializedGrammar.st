serialized grammar
serializedGrammar
^ 'OhmMath <: BaseGrammar {

Exp
    = AddExp

AddExp
    = AddExp "+" MulExp  -- plus
    | AddExp "-" MulExp  -- minus
    | MulExp

  MulExp
    = MulExp "*" ExpExp  -- times
    | MulExp "/" ExpExp  -- divide
    | ExpExp

  ExpExp
    = PriExp "^" ExpExp  -- power
    | PriExp

  PriExp
    = "(" Exp ")"  -- paren
    | "+" PriExp   -- pos
    | "-" PriExp   -- neg
    | ident
    | number

  ident 
    = letter alnum*

  number 
    = digit* "." digit+  -- fract
    | digit+             -- whole


}'