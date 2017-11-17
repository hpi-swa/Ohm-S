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
		 } do: 
		[:assoc | OhmInstance ruleDeclarations at: assoc key 
						put: (OhmRuleDefine newNamed: assoc key parameters: #() body: assoc value)].
					
	OhmInstance ruleDeclarations at: #caseInsensitive
		put: (OhmRuleDefine
				newNamed: #caseInsensitive
				parameters: #(str)
				body: (OhmPExprCaseInsensitive newWithParam))