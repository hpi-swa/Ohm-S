stream
next

   | nextToken |
	nextToken := self contentStream next.
	nextToken ifNil: [^ #ohmFail].
	^ nextToken
		