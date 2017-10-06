accessing
debugNodeString 

	^ 'Range from {1} to {2}' format: {self startCharacter asString . self endCharacter asString}