as yet unclassified
oldGrammar: oldGrammar modifiedTo: newGrammar

	| instance |
	instance := self item: newGrammar kind: OhmChangeNotifier grammarKind.
	instance itemClass: nil.
	instance oldItem: oldGrammar.
	^ instance