An OhmParsingExpression is a parser for the parser combinator style parser for languages defined in the Ohm grammar.

Technical notes:
- The distinction between rules that can skip whitespace and these that should not is the distinction between rules that actually consume input (subclasses of Prim) and meta rules (Alt, Seq, Opt, Not, ...). An exception is Apply which has to skip whitespace as it might itself change the isSyntactic mode of the parsing state. (also see https://github.com/harc/ohm/blob/8202eff3723cfa26522134e7b003cf31ab5de445/src/pexprs-allowsSkippingPrecedingSpace.js)