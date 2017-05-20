browsing
outgoingCalls 
	
	| candidates |

	candidates := (self innerNodesAt: nil).
	^ (candidates select: [:pexpr | pexpr isKindOf: OhmPExprApply]) ,
		((candidates select: [:pexpr | (pexpr isKindOf: OhmPExprApply) not])
			gather: [:pexpr | pexpr outgoingCalls])