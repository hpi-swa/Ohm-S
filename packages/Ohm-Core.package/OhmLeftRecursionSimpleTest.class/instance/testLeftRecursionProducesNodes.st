testing
testLeftRecursionProducesNodes

	"Structure to be produced:
		['number',
              ['numberRec',
                ['number',
                  ['numberRec',
                    ['number',
                      ['numberRec',
                        ['number', '1'],
                        '2']],
                    '3']],
                '4']]);"

	"M { number = numberRec | digit 
             numberRec = number digit }"
	

	| result |
	result := (self fixtureGrammar match: '1234' startingFrom: #number) cst.
	self assert: 'number' equals: result ruleName.

	result := result children first.
	self assert: 'numberRec' equals: result ruleName.

	result := result children first.
	self assert: 'number' equals: result ruleName.

	result := result children first.
	self assert: 'numberRec' equals: result ruleName.

	result := result children first.
	self assert: 'number' equals: result ruleName.

	result := result children first.
	self assert: 'numberRec' equals: result ruleName.

	self assert: 'number' equals: result children first ruleName.
	self assert: 'digit' equals: result children second ruleName.