as yet unclassified
testNewGrammarCreationAPIbrokenGrammar

	self should: [OhmGrammar new: 'G {
					broken = "  }'] 
		raise: OhmMatchFailure