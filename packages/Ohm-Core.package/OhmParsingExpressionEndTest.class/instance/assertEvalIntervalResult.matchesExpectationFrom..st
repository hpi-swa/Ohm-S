as yet unclassified
assertEvalIntervalResult: bindings matchesExpectationFrom: aFixture

	| newBindings |
	newBindings := { bindings second }.
	super
		assertEvalIntervalResult: newBindings matchesExpectationFrom: aFixture.