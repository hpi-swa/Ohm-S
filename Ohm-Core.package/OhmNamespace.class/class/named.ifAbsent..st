instance creation
named: packageName ifAbsent: errorBlock

	^ PackageOrganizer default packageNamed: packageName ifAbsent: errorBlock 