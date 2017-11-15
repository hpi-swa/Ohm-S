as yet unclassified
compile: code in: class notifying: requestor ifFail: failBlock

	| result |
	result := super compile: code in: self notifying: requestor ifFail: failBlock.
	class recompile.
	^ result