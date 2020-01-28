accessing
doEval: state

	| originalInputState matchCount result columns row |
	
	originalInputState := state inputStream getState.
	
	self syntacticRuleHandling: state.
	columns := (1 to: self arity) collect:	[ :n | OrderedCollection new ].

	matchCount := 0.
	[	| backtrackPosition | 
	 	 backtrackPosition := state inputStream getState.
		self syntacticRuleHandling: state.
		row := OrderedCollection new.
		state pushBindings: row.
		result := self term eval: state.
		state popBindings.
		result
			ifTrue: [	matchCount := matchCount + 1.
					self putRow: row intoColumns: columns. ]
			ifFalse: [ state inputStream setState: backtrackPosition ]
	 ] doWhileTrue: [result].
	
	matchCount < self min
		ifTrue: [ ^ false ]
		ifFalse: [columns do: [:column | 
					state 
						addNodeNamed: self class listRuleIdentifier 
						startedAt: originalInputState 
						withChildren: column].
			^ true ]