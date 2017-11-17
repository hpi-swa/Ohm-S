converting
replaceParametersWithArguments: arguments

	^ self class 
		newOn: (self term replaceParametersWithArguments: arguments) 
		minimalMatches: self min