as yet unclassified
testFailureInformationOnFailedMatch

	"Error messages are fine when displayed in monospace. --pre"

	| g matching |

	g := OhmGrammar new: 'G { start = "a" "b" "c" "d" }'.
	
	matching := g match: 'ab' startingFrom: 'start'.

	self assert: matching failure message equals: 
'Line 1, column 3: ab
                     ^
Expected ''c'''.
	self assert: matching failure position equals: 2.


	matching := g match: 'abcde' startingFrom: 'start'.

	self assert: matching failure message equals: 
'Line 1, column 5: abcde
                       ^
Expected end of input'.
	self assert: matching failure position equals: 4.