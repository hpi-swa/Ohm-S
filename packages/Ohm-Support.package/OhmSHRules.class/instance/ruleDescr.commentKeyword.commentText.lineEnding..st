actions
ruleDescr: aNode commentKeyword: keyword commentText: text lineEnding: character

	^ { self rangeFrom: keyword type: #comment . 
		self rangeFrom: text type: #comment }