accessing
printStringLimitedTo: characterLimit

	^ self ruleName copyFrom: 1 to: (characterLimit min: self ruleName size)