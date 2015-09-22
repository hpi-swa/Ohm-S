accessing
message
	
	| errorInfo text lineAndColumnInfoText |

	self state inputStream isStringStream
		ifFalse: [ ^ 'match failed at position ' , self position ].

	errorInfo := self errorInfo.
	text := WriteStream on: ''.

	lineAndColumnInfoText := 'Line ' , errorInfo lineNumber , ', column ' , errorInfo columnNumber , ': '.
	text << lineAndColumnInfoText.
	text << errorInfo line.
	text << ('' , Character cr).

	errorInfo columnNumber + lineAndColumnInfoText size
		timesRepeat: [ text << Character space ].
	text << ('^' , Character cr).
	text << self expectedText.
	
	^ text contents