as yet unclassified
testMatchFailureOnFailedMatch

	| g result |

	g := OhmGrammar makeGrammar: 'G { start = ''a'' ''b'' ''c'' ''d'' }'.
	result := g match: 'ab' startingFrom: 'start'.

	self should: result failed.
	self shouldnt: result succeeded.
	self assert: result message equals:  
		'Line 1, col 3:', Character cr ,
		'> 1 | ab', Character cr ,
		'        ^', Character cr ,
            'Expected "c"'.
	self assert: result shortMessage equals: 'Line 1, col 3: expected "c"'.
	self assert: result rightmostFailurePosition equals: 2.

	result := g match: 'abcde' startingFrom: 'start'.
	self assert: result failed.
	self shouldnt: result succeeded.
	self assert: result message equals:
		 'Line 1, col 5:', Character cr,
		 '> 1 | abcde', Character cr,
		 '          ^', Character cr,
		 'Expected end of input'.
      self assert: result shortMessage equals: 'Line 1, col 5: expected end of input'.
	self assert: result rightmostFailurePosition equals: 4.