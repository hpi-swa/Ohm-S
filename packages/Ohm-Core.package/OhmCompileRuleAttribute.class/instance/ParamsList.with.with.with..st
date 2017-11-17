actions
ParamsList: node with: startIdentifier with: separators with: optionalMoreIdentifiers 

	^ {startIdentifier interval contents} , (optionalMoreIdentifiers children collect: [:i | i interval contents])