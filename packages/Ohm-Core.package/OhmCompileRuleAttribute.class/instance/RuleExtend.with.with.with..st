actions
RuleExtend: node with: name with: x with: body

	self currentRule: (self value: name).
	^ self builder extend: (self value: name) body: (self value: body)