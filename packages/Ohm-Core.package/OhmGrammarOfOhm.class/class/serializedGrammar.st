serialized grammar
serializedGrammar
^ 'Ohm <: BaseGrammar {

Alt
    = Term ''|'' Alt  -- rec
    | Term

Base
    = ident ~(ruleDescr? ''='' | '':='' | ''+='')  -- application
    | (keyword | string | regExp | number)   -- prim
    | ''('' Alt '')''                            -- paren
    | ''['' Alt '']''                            -- listy
    | ''{'' ''...''? ''}''                         -- obj
    | ''{'' Props ('','' ''...'')? ''}''             -- objWithProps

Grammar
    = GrammarHeader ''{'' Rule* ''}''

GrammarHeader
    = GrammarName SuperGrammar?

GrammarName
    = ident ''.'' ident -- qualified
    | ident              -- unqualified

Grammars
    = Grammar*

Iter
    = Pred ''*''  -- star
    | Pred ''+''  -- plus
    | Pred ''?''  -- opt
    | Pred

Pred
    = ''~'' Base  -- not
    | ''&'' Base  -- lookahead
    | Base

Prop
    = (name | string) '':'' Base

Props
    = Prop '','' Props  -- rec
    | Prop            -- base

Rule
    = ident ruleDescr? ''=''  Alt  -- define
    | ident ruleDescr? '':='' Alt  -- override
    | ident            ''+='' Alt  -- extend

Seq
    = Iter*

SuperGrammar
    = ''<:'' ident ''.'' ident  -- qualified
    | ''<:'' ident              -- unqualified

Term
    = Seq caseName -- inline
    | Seq

caseName
    = ''--'' (~''\n'' space)* name (~''\n'' space)* (''\n'' | &''}'')

ident  -- identifier
    = ~keyword name

keyword
    = ''undefined'' ~nameRest  -- undefined
    | ''null'' ~nameRest       -- null
    | ''true'' ~nameRest       -- true
    | ''false'' ~nameRest      -- false

name  -- name
    = nameFirst nameRest*

nameFirst
    = ''_''
    | letter

nameRest
    = ''_''
    | ''-''
    | alnum

number  -- number
    = ''-''? digit+

reCharClass
    = ''\\p{'' /[A-Za-z]/+ ''}''    -- unicode
    | ''['' (''\\]'' | ~'']'' _)* '']'' -- ordinary

regExp  -- regular expression
    = ''/'' reCharClass ''/''

ruleDescr  -- rule description for use in error messages
    = ''--'' ruleDescrText ''\n''

ruleDescrText
    = (~''\n'' _)*

sChar
    = ''\\x'' hexDigit hexDigit                    -- hexEscape
    | ''\\u'' hexDigit hexDigit hexDigit hexDigit  -- unicodeEscape
    | ''\\'' _                                     -- escape
    | ~''\'''' ~''\n'' _

space
   += ''//'' (~''\n'' _)* ''\n''  -- singleLine
    | ''/*'' (~''*/'' _)* ''*/''  -- multiLine

string  -- string literal
    = ''\'''' sChar* ''\''''}'