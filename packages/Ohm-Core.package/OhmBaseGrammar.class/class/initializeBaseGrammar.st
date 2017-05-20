class initialization
initializeBaseGrammar

	OhmInstance := OhmGrammar basicNew  
						grammarName: 'BaseGrammar';
						ruleDeclarations: Dictionary new;
						namespace: OhmNamespace defaultNamespace;
						yourself.
	OhmInstance superGrammar: OhmInstance.
	 
	{    '_' asSymbol -> OhmPExprAnything new .
		#end -> (OhmPExprNot newOn: (OhmPExprApply newOn: '_' asSymbol)) .
		#space -> (OhmPExprRegex newOn: '[\s]') .
		#alnum -> (OhmPExprRegex newOn: '[0-9a-zA-Z]') .
		#letter -> (OhmPExprRegex newOn: '[a-zA-Z]') .
		#lower -> (OhmPExprRegex newOn: '[a-z]') .
		#upper -> (OhmPExprRegex newOn: '[A-Z]') .
		#digit -> (OhmPExprRegex newOn: '[0-9]') .
		#hexDigit -> (OhmPExprRegex newOn: '[0-9a-fA-F]') } do: 
		[:assoc | OhmInstance ruleDeclarations at: assoc key 
						put: (OhmRuleDefine newNamed: assoc key body: assoc value)].