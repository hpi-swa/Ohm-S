accessing
ownAndInheritedRules

	| ownDefinedRules |

	self superGrammar = self
		ifTrue: [^ self rules].

	ownDefinedRules := self rules collect: #ruleName.
	
	^ (self superGrammar ownAndInheritedRules reject: [:r | ownDefinedRules includes: r ruleName ]) , self rules 