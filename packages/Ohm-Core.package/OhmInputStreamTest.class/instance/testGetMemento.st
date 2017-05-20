testing
testGetMemento

	| memento |
	memento := self fixtureStream getState.
	self assert: self fixtureStream next equals: $h.
      self fixtureStream setState: memento.
      self assert: self fixtureStream next equals: $h.