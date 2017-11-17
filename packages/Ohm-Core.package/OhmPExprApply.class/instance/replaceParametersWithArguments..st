converting
replaceParametersWithArguments: arguments

	^ self class 
		newOn: self ruleName 
		arguments: (self arguments collect: [:arg | 
						arg replaceParametersWithArguments: arguments])