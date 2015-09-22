actions
GrammarHeader: aNode with: grammarIdentifier with: superGrammar

	self grammarToBuild: OhmGrammar new.

	"Cause side effects on the grammar to build"
	self 
		value: grammarIdentifier;
		value: superGrammar.
		
	^ self grammarToBuild 