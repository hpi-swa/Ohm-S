tests
testGrammarParsesCascadedMessages
	
	"This has a different meaning now --pre"
	startRule := #Expression.
	
	self shouldParseAll: #(
		'self negated firstMessage: 2; yourself'
		'self negated firstMessage: 2 negated; yourself'
		'self negated firstMessage; anotherMessage: 2 negated; yourself' )