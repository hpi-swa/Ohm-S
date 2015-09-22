as yet unclassified
newOn: arrayOfAssociations inMode: matchMode

	self assert: ({#strict . #lenient} includes: matchMode).

	^ (self new)
		properties: arrayOfAssociations;
		matchMode: matchMode;
		yourself