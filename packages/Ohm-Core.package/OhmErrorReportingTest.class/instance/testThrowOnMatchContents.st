as yet unclassified
testThrowOnMatchContents

	"Error messages are fine when displayed in monospace. --pre"

	| g matching |

	g := OhmGrammar new: 'G { start = ''a'' ''b'' ''c'' ''d'' }'.
	
	matching := [ g matchContents: 'ab' startingFrom: 'start' failureAsException: true ].

	self should: matching raise: OhmMatchFailure.
	matching 
		on: OhmMatchFailure
		do: [ :e | self assert: e message equals: 
'Line 1, column 3: ab
                     ^
Expected ''c'''.
				self assert: e position equals: 2. ].


	matching := [ g matchContents: 'abcde' startingFrom: 'start' failureAsException: true ].

	self should: matching raise: OhmMatchFailure.
	matching 
		on: OhmMatchFailure
		do: [ :e | self assert: e message equals: 
'Line 1, column 5: abcde
                       ^
Expected end of input'.
				self assert: e position equals: 4. ]