memoization
tryToUseMemoizedResult

	| memo |
	memo := self input getMemoizedResultFor: self ruleName.
	(memo ~~ #ohmFail and: [memo isLeftRecursion not])
		ifTrue: [ self input setState: memo position.
				memo node ifNotNil: [ :node | self bindings add: node ].
				^ memo].
	^ memo