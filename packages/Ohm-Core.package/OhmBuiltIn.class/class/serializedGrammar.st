as yet unclassified
serializedGrammar

^ 'BuiltInRules <: BaseGrammar {

  alnum  (an alpha-numeric character)
    = letter
    | digit

  lower 
    = "a".."z"

  upper 
    = "A".."Z"

  letter  (a letter)
    = lower
    | upper

  digit  (a digit)
    = "0".."9"

  hexDigit  (a hexadecimal digit)
    = digit
    | "a".."f"
    | "A".."F"

  ListOf<elem, sep>
    = NonemptyListOf<elem, sep>
    | EmptyListOf<elem, sep>

  NonemptyListOf<elem, sep>
    = elem (sep elem)*

  EmptyListOf<elem, sep>
    = /* nothing */

  listOf<elem, sep>
    = nonemptyListOf<elem, sep>
    | emptyListOf<elem, sep>

  nonemptyListOf<elem, sep>
    = elem (sep elem)*

  emptyListOf<elem, sep>
    = /* nothing */

}'