as yet unclassified
eval: state

	<layer: #ohmDebugging>

	| result ohmDebugger |
	ohmDebugger := Processor activeProcess environmentAt: #OhmDebuggerInstance.
	ohmDebugger stepBefore: self at: state.
	result := self doEval: state.
	ohmDebugger stepAfter: self at: state with: result.
	^ result