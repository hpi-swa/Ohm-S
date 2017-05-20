serialized grammar
serializedGrammar
^ 'Bibtex <: BaseGrammar {

BibtexDB =
  Comment? (CommandOrEntry Comment?)*

CommandComment =
  "comment"

CommandOrEntry =
  "@" (CommandComment | Preamble | String | Entry)

Comment =
  (~"@" any)+

Entry = 
	identifier ( "{" key EntryBody? "}" | "(" keyParen EntryBody? ")" )

EntryBody = 
 ("," identifier "=" bibValue)* ","?

Preamble =
  "preamble" ("{" "}" | "(" ")")

String = 
  "string" ("{" StringBody "}" | "(" StringBody ")")

StringBody =
  identifier "=" bibValue

balanced =
  "{" balanced+ "}" --brackets
  | (~("{" | "}") any) -- any

bibValue = 
  piece (space* "#" space* piece)*

identifier = 
  ~digit
  ( ~("#" | "=" | "%" | " " | "\"" | "\''" | "," | "{" | "}" | "(" | ")" )
    any )+

key = 
  (~("," | space | "}") any)*

keyParen = 
  (~("," | space | ")") any)*

piece =
  digit+ --number
  | "{" balanced* "}" --brackets
  | "\"" (~"\"" balanced)* "\"" --string
  | identifier --identifier}'