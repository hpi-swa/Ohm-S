actions
RuleOverride: aNode with: name with: formals with: description with: x with: body

	self currentRule: (self value: name).
	^ self builder 
		override: (self value: name) 
		body: (self value: body).