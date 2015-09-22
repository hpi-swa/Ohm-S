as yet unclassified
assertNoDuplicateActions: actionsClass

	| messageHeads messages |

	messages :=
	{ OhmSemanticAction. OhmInheritedAttribute. OhmSynthesizedAttribute}
		inject: (actionsClass allSelectorsBelow: OhmAttributes) 
		into: [:msgs :class | msgs difference: (class allSelectorsBelow: OhmAttributes) ].

	messageHeads := (messages asOrderedCollection
							collect: [ :msg | (msg subStrings: ':')]
							thenSelect: [:msg | msg size > 1])
							collect: [ :msg | msg first].
	
	messageHeads asSet size < messageHeads size
		ifTrue: ["There is at least one messageHead which is not unique --pre"
				| violatingMethod |
				violatingMethod := messageHeads detect: [:msg | (messageHeads occurrencesOf: msg) > 1].
				OhmDuplicateActionDeclarationError signalForAction: violatingMethod. ].
				
