attributes
installAttribute: attributesObject

	self 
		assertAritiesMatch: attributesObject class;
		assertNoDuplicateActions: attributesObject class.
	attributesObject grammar: self.
	^ attributesObject