actions
ParamsList: node with: startParameter with: separators with: optionallyMoreParameters 

	^ {self value: startParameter} , (optionallyMoreParameters children collect: [:p | self value: p ])