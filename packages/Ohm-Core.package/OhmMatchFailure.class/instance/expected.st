accessing
expected

	^ Set newFrom: (self state rightmostFailure expressions 
					collect: [ :e | e asExpected: state grammar ownAndInheritedRules ]).

	