compiling
compileRule: textualRepresentation forGrammar: aGrammar

	| cst rules cleanedTextualRepresentation |

	"To ensure the ending of the snippet complies with Ohm syntax"
	cleanedTextualRepresentation := textualRepresentation asString 
		withoutTrailingBlanks , Character cr asString.

	cst := OhmGrammarOfOhm 
				match: cleanedTextualRepresentation 
				startingFrom: #Rule.
	
	rules := (OhmGrammarOfOhm 
				semanticAction: OhmCompileRuleAttribute new) 
					value: cst.
	
	self installRules: rules into: aGrammar.
	
	aGrammar smalltalkPlaceholder ifNotNil: [
		aGrammar serializeToSmalltalkClass].

	^ rules