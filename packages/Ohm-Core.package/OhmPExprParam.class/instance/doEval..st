evaluation
doEval: aState
	"OhmPExprParam are placeholders which should be replaced by the actual rules
	on the first call of the parameterized rule."

	self error: 'A Param parsing expression should never be executed.'