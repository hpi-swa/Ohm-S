instance creation
named: namespaceName
	|newName|
	newName := namespaceName ifNil: [ ^ self defaultNamespace ].
	^ PackageOrganizer default packageNamed: namespaceName ifAbsent: [(self new packageName: namespaceName) register]