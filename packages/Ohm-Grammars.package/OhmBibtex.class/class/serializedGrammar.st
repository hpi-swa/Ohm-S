as yet unclassified
serializedGrammar
^ 'Bibtex <: BaseGrammar {

BibtexDB =
  Comment? (CommandOrEntry Comment?)*

CommandComment =
  "comment"

CommandOrEntry =
  "@" (CommandComment | Preamble | String | Entry)

Comment =
  (~"@" _)+

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
  | (~("{" | "}") _) -- any

bibValue = 
  piece (space* "#" space* piece)*

identifier = 
  ~digit
  ( ~("#" | "=" | "%" | " " | "\"" | "\''" | "," | "{" | "}" | "(" | ")" )
    _ )+

key = 
  (~("," | space | "}") _)*

keyParen = 
  (~("," | space | ")") _)*

piece =
  digit+ --number
  | "{" balanced* "}" --brackets
  | "\"" (~"\"" balanced)* "\"" --string
  | identifier --identifier}'