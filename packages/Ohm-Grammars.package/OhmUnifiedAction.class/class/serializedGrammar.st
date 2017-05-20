as yet unclassified
serializedGrammar
^ 'Ohm-Core-Grammars.UnifiedAction <: Ohm-Grammars.Ohm {

Alt
    := Term "|" Alt binding?  -- rec
    | Term  -- term

Seq 
  := (Iter binding?)* -- withBinding

binding =
    ":" ident}'