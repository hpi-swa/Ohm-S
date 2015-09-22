actions
RuleDefine: node with: name with: description with: x with: body

	| bodyValue descriptionValue nameValue |
	nameValue := self value: name.
	self currentRule: nameValue.
	bodyValue := self value: body.
	descriptionValue := self value: description.
	
	^ self builder define: nameValue body: bodyValue