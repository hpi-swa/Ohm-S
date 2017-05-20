testing
testLeftRecursionHandlingAlsoCreatesCorrectIntervals

	" This is the structure which we want to check for intervals:
	 ['tricky', 											1>4
                ['bar', 										1>4
                        ['barRec', 								1>4
                                ['foo', 								1>3
                                        ['fooRec',						1>3
                                                ['bar',              			1>2
                                                        ['barRec',      		1>2
                                                                ['foo', '1'],	1>1
                                                                '2']] 
                                                , '3']]
                        	, '4']]]);"

	| result |
	result := (self fixtureGrammar match: '1234' startingFrom: #tricky) cst.
	"tricky"
	self assert: 1 equals: result interval start.
	self assert: 4 equals: result interval end.
	self assert: 'tricky' equals: result ruleName.

	"bar"
	result := result children at: 2.
	self assert: 1 equals: result interval start.
	self assert: 4 equals: result interval end.
	self assert: 'bar' equals: result ruleName.

	"barRec"
	result := result children at: 1.
	self assert: 1 equals: result interval start.
	self assert: 4 equals: result interval end.
	self assert: 'barRec' equals: result ruleName.

	"foo"
	result := result children at: 1.
	self assert: 1 equals: result interval start.
	self assert: 3 equals: result interval end.
	self assert: 'foo' equals: result ruleName.

	"fooRec"
	result := result children at: 1.
	self assert: 1 equals: result interval start.
	self assert: 3 equals: result interval end.
	self assert: 'fooRec' equals: result ruleName.

	"bar"
	result := result children at: 1.
	self assert: 1 equals: result interval start.
	self assert: 2 equals: result interval end.
	self assert: 'bar' equals: result ruleName.

	"barRec"
	result := result children at: 1.
	self assert: 1 equals: result interval start.
	self assert: 2 equals: result interval end.
	self assert: 'barRec' equals: result ruleName.

	"foo"
	result := result children at: 1.
	self assert: 1 equals: result interval start.
	self assert: 1 equals: result interval end.
	self assert: 'foo' equals: result ruleName.
	