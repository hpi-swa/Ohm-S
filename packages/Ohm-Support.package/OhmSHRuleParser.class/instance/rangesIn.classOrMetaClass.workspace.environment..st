as yet unclassified
rangesIn: aString classOrMetaClass: aClass workspace: workspace environment: environment 
	
	| cst rangeSetting grammarSource offset |
	(aString beginsWith: 'serializedGrammar') ifFalse: [
		^ super 
			rangesIn: aString 
			classOrMetaClass: aClass 
			workspace: workspace 
			environment: environment].
	
	offset := aString findFirst: [:c | c = $'].
	grammarSource := aString copyFrom: offset + 1 to: (aString findLast: [:c | c = $']) - 1.
	
	cst := OhmGrammarOfOhm 
		match: grammarSource , Character cr 
		startingFrom: #Grammar.
	cst failed ifTrue: [ ^ {} ].
	rangeSetting := OhmGrammarOfOhm synthesizedAttribute: OhmSHRules new.
	
	ranges := rangeSetting value: cst.
	ranges do: [:r | 
		r start: r start + offset.
		r end: r end + offset ].
	ranges := ranges sorted: [:r1 :r2 | r1 start < r2 start].
	^ ranges asOrderedCollection 