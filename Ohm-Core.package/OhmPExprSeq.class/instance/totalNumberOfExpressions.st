accessing
totalNumberOfExpressions

	^ super totalNumberOfExpressions + (self terms collect: [:e | e totalNumberOfExpressions]) sum