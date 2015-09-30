as yet unclassified
testInheritedAttributesWorkTheOtherWayRound

	| depth g cst collector result |
	g := OhmGrammar new: '
		G { abcs = ''a'' b ''c''*
			b = ''b'' }'.

	depth := g inheritedAttribute: OhmAttributeGenerationTestInheritedAttribute new.
	collector := g synthesizedAttribute: (OhmAttributeGenerationTestCollectorAttribute newOn: depth).

	cst := g matchContents: 'abccc' startingFrom: 'abcs'.
	result := collector value: cst.
	
	result := Dictionary new addAll: result; yourself.
	
	self assert: 1 equals: (result at: #b).
	self assert: 0 equals: (result at: #abcs).