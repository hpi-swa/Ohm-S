as yet unclassified
oldRule: oldRule modifiedTo: newRule in: grammar

	| instance |
	instance := self item: newRule kind: OhmChangeNotifier ruleKind.
	instance itemClass: grammar.
	instance oldItem: oldRule.
	^ instance