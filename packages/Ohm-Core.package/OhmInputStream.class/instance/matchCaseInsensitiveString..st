matching
matchCaseInsensitiveString: aString

	aString do: [ :aCharacter |	
		self next asLowercase = aCharacter asLowercase
			ifFalse: [ ^ #ohmFail ] ].
		
	^ true