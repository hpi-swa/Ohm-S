actions
RuleExtend: node with: name with: parameters with: x with: body

	| bodyValue nameValue |
	nameValue := self value: name.
	self currentRule: nameValue.
	self builder parameterNames: ((self value: parameters) ifNil: [#()]).
	
	bodyValue := self value: body.
	
	^ self builder 
		extend: nameValue 
		body: bodyValue