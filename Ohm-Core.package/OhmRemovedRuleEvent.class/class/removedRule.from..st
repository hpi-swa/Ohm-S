as yet unclassified
removedRule: removedRule from: grammarRemovedFrom

	| instance |

	instance := self item: removedRule kind: OhmChangeNotifier ruleKind.
	instance itemClass: grammarRemovedFrom.
	^ instance