standard attributes
defaultExpression: aNode
 
	| result offset |
	result := aNode interval contents.
	offset := 0.
	aNode children do: [:child | | newChildText relativeChildInterval |
		newChildText := self value: child.
		newChildText ~= child interval contents ifTrue: [
			"This is necessary as the child nodes all have absolute
			intervals (with respect to the overall input string) but we only
			manipulate the string of the current node."
			relativeChildInterval := (child interval start - aNode interval start) + 1 to:
				(child interval end - aNode interval start) + 1.
			result := (result copyFrom: 1 to: relativeChildInterval start - 1 + offset) ,
				newChildText ,
				(result copyFrom: ((relativeChildInterval stop + 1 + offset) min: result size + 1) to: result size).
			offset := offset + (newChildText size - relativeChildInterval size)]].
	^ result