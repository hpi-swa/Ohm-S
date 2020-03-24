leftRecursion
growTheSeed: seed

	| memo newMemo |

	"Set state so when reaching the rule again we have can use the current result"
	self memoizeResult: seed.
	
	"Reset the input state and get the memo so we can start again"
	self input setState: self originalPosition.
	newMemo := self input getMemoizedResultFor: self ruleName.
	[ 	memo := newMemo.
		self memoizeResult: self evaluateBody. "TODO here we need different handling"
	 	self input setState: self originalPosition.
	  	newMemo := self input getMemoizedResultFor: self ruleName. ] 
			doWhileTrue: [newMemo ~~ #ohmFail and: [newMemo position > memo position]].

	self input setState: memo position.
	^ memo node

		