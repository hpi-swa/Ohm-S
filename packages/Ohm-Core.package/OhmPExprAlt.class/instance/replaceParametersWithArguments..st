converting
replaceParametersWithArguments: arguments

	^ self class newOn: 
		(self terms collect: [:t | t replaceParametersWithArguments: arguments])