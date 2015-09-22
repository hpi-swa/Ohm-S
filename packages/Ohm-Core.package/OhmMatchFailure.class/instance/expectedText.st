accessing
expectedText

	| expected text |
	
	expected := self expected asOrderedCollection.
	expected size = 1
		ifTrue: [ ^ 'Expected ' ,  expected first ].

	text := WriteStream on: ''.
	2 to: expected size - 1 do: [ :index |
		text << ', or '.
		text << (expected at: index). ].

	text << (' or ' , expected last).

	^ 'Expected ' , expected first , text contents