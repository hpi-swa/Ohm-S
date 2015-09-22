accessing
doEval: state
	
	| start children tmpChildren |
	
	self syntacticRuleHandling: state.
	start := state inputStream getState.	
	children := OrderedCollection new.

	self terms do: [ :term | | result |
		tmpChildren := OrderedCollection new.
		state pushBindings: tmpChildren.
		self syntacticRuleHandling: state.
		result := term eval: state.
		state popBindings.
		result
			ifFalse: [ ^ false ]
			ifTrue:  [ children addAll: tmpChildren ]].

	state bindings addAll: children.

	^ true