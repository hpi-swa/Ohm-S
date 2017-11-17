class initialization
initializeBaseGrammar

	OhmInstance := OhmGrammar basicNew  
						grammarName: 'BaseGrammar';
						ruleDeclarations: Dictionary new;
						namespace: OhmNamespace defaultNamespace;
						yourself.
	OhmInstance superGrammar: OhmInstance.
	  
	{    'any' asSymbol -> OhmPExprAnything new .
		#end -> (OhmPExprNot newOn: (OhmPExprApply newOn: 'any' asSymbol)) .
		
		#space -> (OhmPExprRange newFrom: Character null to: Character space) .
		#spaces -> (OhmPExprMany newStarOn: (OhmPExprApply newOn: #space)).
		
		#alnum -> (OhmPExprRegex newOn: '[0-9a-zA-Z]') .
		#letter -> (OhmPExprRegex newOn: '[a-zA-Z]') .
		#lower -> (OhmPExprRegex newOn: '[a-z]') .
		#upper -> (OhmPExprRegex newOn: '[A-Z]') .
		#digit -> (OhmPExprRegex newOn: '[0-9]') .
		#hexDigit -> (OhmPExprRegex newOn: '[0-9a-fA-F]') } do: 
		[:assoc | OhmInstance ruleDeclarations at: assoc key 
						put: (OhmRuleDefine newNamed: assoc key parameters: #() body: assoc value)].
					
	OhmInstance ruleDeclarations at: #caseInsensitive
		put: (OhmRuleDefine
				newNamed: #caseInsensitive
				parameters: #(str)
				body: (OhmPExprCaseInsensitive newWithParam))