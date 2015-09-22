as yet unclassified
addedRule: rule grammarAddedTo: grammar

	| instance |

	instance := self item: rule kind: OhmChangeNotifier ruleKind.
	instance itemClass: grammar.
	^ instance