as yet unclassified
bootstrapOhmGrammar

	| b |
	b := OhmGrammarBuilder new.
	b setGrammarName: 'Ohm'.
	
	b addRule: 'Grammars' as: ( b star: (b apply: 'Grammar')).
	b addRule: 'Grammar' as: ( b seq: { b apply: 'GrammarHeader' . b prim: '{' . b star: (b apply: 'Rule') . b prim: '}' }).
	b addRule: 'GrammarHeader' as: (b seq: { b apply: 'GrammarName' . b opt: (b apply: 'SuperGrammar') }).
	
	b addRule: 'GrammarName' as: (b alt: { b apply: 'GrammarName_qualified' . b apply: 'GrammarName_unqualified' }).
	b addInlineRule: 'GrammarName_qualified' as: (b seq: { b apply: 'ident' . b prim: '.' . b apply: 'ident' }).
	b addInlineRule: 'GrammarName_unqualified' as: (b seq: { b apply: 'ident' }). 
	
	b addInlineRule: 'SuperGrammar_qualified' as: (b seq: { b prim: '<:' . b apply: 'ident' . b prim: '.' . b apply: 'ident' }).
	b addInlineRule: 'SuperGrammar_unqualified' as: (b seq: { b prim: '<:' . b apply: 'ident' }).
	b addRule: 'SuperGrammar' as: ( b alt: { b apply: 'SuperGrammar_qualified' . b apply: 'SuperGrammar_unqualified'}).
	b addInlineRule: 'Rule_define' as: (b seq: {b apply: 'ident' . b opt: (b apply: 'ruleDescr') . b prim: '=' . b apply: 'Alt'}).
	b addInlineRule: 'Rule_override' as: (b seq: {b apply: 'ident' . b opt: (b apply: 'ruleDescr') . b prim: ':=' . b apply: 'Alt'}).
	b addInlineRule: 'Rule_extend' as: (b seq: {b apply: 'ident' . b prim: '+=' . b apply: 'Alt'}).
	b addRule: 'Rule' as: ( b alt: { b apply: 'Rule_define' . b apply: 'Rule_override' . b apply: 'Rule_extend'}).
	b addInlineRule: 'Alt_rec' as: (b seq: {b apply: 'Term' . b prim: '|' . b apply: 'Alt'}).
	b addRule: 'Alt' as: ( b alt: {b apply: 'Alt_rec' . b apply: 'Term'}).
	b addInlineRule: 'Term_inline' as: (b seq: {b apply: 'Seq' . b apply: 'caseName'}).
	b addRule: 'Term' as: ( b alt: { b apply: 'Term_inline' . b apply: 'Seq'}).
	b addRule: 'Seq' as: ( b star: (b apply: 'Iter')).
	b addInlineRule: 'Iter_star' as: (b seq: {b apply: 'Pred' . b prim: '*'}).
	b addInlineRule: 'Iter_plus' as: (b seq: {b apply: 'Pred' . b prim: '+'}).
	b addInlineRule: 'Iter_opt' as: (b seq: {b apply: 'Pred' . b prim: '?'}).
	b addRule: 'Iter' as: ( b alt: {b apply: 'Iter_star' . b apply: 'Iter_plus' . b apply: 'Iter_opt' . b apply: 'Pred'}).
	b addInlineRule: 'Pred_not' as: (b seq: {b prim: '~' . b apply: 'Base'}).
	b addInlineRule: 'Pred_lookahead' as: (b seq: {b prim: '&' . b apply: 'Base'}).
	b addRule: 'Pred' as: ( b alt: {b apply: 'Pred_not' . b apply: 'Pred_lookahead' . b apply: 'Base'}).
	b addInlineRule: 'Base_application' 
	   as: (b seq: 
	            {b apply: 'ident' . b not: (b alt: { b seq: {b opt: (b apply: 'ruleDescr') . b prim: '='} . b prim: ':=' . b prim: '+='})}).
	b addInlineRule: 'Base_prim' as: (b alt: { b apply: 'keyword' . b apply: 'string' . b apply: 'regExp' . b apply: 'number'}).
	b addInlineRule: 'Base_paren' as: (b seq: {b prim: '(' . b apply: 'Alt' . b prim: ')'}).
	b addInlineRule: 'Base_listy' as: (b seq: {b prim: '[' . b apply: 'Alt' . b prim: ']'}).
	b addInlineRule: 'Base_obj' as: (b seq: {b prim: '{' . b opt: (b prim: '...') . b prim: '}'}).
	b addInlineRule: 'Base_objWithProps' as: (b seq: {b prim: '{' . b apply: 'Props' . b opt: (b seq: {b prim: ',' . b prim: '...'}) . b prim: '}'}).
	b addRule: 'Base' 
	   as: ( b alt: { b apply: 'Base_application' . b apply: 'Base_prim' . b apply: 'Base_paren' . b apply: 'Base_listy' . b apply: 'Base_obj' . b apply: 'Base_objWithProps' }).
	  b addInlineRule: 'Props_rec' as: (b seq: {b apply: 'Prop' . b prim: ',' . b apply: 'Props'}).
	  b addInlineRule: 'Props_base' as: (b apply: 'Prop').
	  b addRule: 'Props' as: ( b alt: { b apply: 'Props_rec' . b apply: 'Props_base'}).
	  b addRule: 'Prop' as: ( b seq: { b alt: {b apply: 'name' . b apply: 'string'} . b prim: ':' . b apply: 'Base'}).
	  b addRule: 'ruleDescr' as: ( b seq: { b prim: '--' . b apply: 'ruleDescrText' . b prim: ('',Character cr)}).
	  b addRule: 'ruleDescrText' as: ( b star: (b seq: {b not: (b prim: ('',Character cr)) . b apply: '_'})).
	  b addRule: 'caseName' 
		as: ( b seq: 
				{ b prim: '--' . 
				  b star: (b seq: {b not: (b prim: ('',Character cr)) . b apply: 'space'}) . 
				  b apply: 'name' . 
				  b star: (b seq: {b not: (b prim: ('',Character cr)) . b apply: 'space'}) . 
				  b alt: {b prim: ('',Character cr) . b lookahead: (b prim: '}')}}).
	  b addRule: 'name' as: ( b seq: {b apply: 'nameFirst' . b star: (b apply: 'nameRest')}).
	  b addRule: 'nameFirst' as: ( b alt: { b prim: '_' . b apply: 'letter'}).
	  b addRule: 'nameRest' as: ( b alt: { b prim: '-' . b prim: '_' . b apply: 'alnum'}).
	  b addRule: 'ident' as: ( b seq: {b not: (b apply: 'keyword') . b apply: 'name'}).
	  b addInlineRule: 'keyword_undefined' as: (b seq: {b prim: 'undefined' . b not: (b apply: 'nameRest')}).
	  b addInlineRule: 'keyword_null' as: (b seq: {b prim: 'null' . b not: (b apply: 'nameRest')}).
	  b addInlineRule: 'keyword_true' as: (b seq: {b prim: 'true' . b not: (b apply: 'nameRest')}).
	  b addInlineRule: 'keyword_false' as: (b seq: {b prim: 'false' . b not: (b apply: 'nameRest')}).
	  b addRule: 'keyword' as: ( b alt: { b apply: 'keyword_undefined' . b apply: 'keyword_null' . b apply: 'keyword_true' . b apply: 'keyword_false'}).
	  b addRule: 'string' as: ( b seq: {b prim: '''' . b star: (b apply: 'sChar') . b prim: ''''} ) .
	  b addInlineRule: 'sChar_hexEscape' as: (b seq: {b prim: '\x' . b apply: 'hexDigit' . b apply: 'hexDigit'}).
	  b addInlineRule: 'sChar_unicodeEscape' as: (b seq: {b prim: '\u' . b apply: 'hexDigit' . b apply: 'hexDigit' . b apply: 'hexDigit' . b apply: 'hexDigit'}).
	  b addInlineRule: 'sChar_escape' as: (b seq: {b prim: '\' . b apply: '_'}).
	  b addRule: 'sChar' 
	     as: ( b alt: 
	                {b apply: 'sChar_hexEscape' . b apply: 'sChar_unicodeEscape' . b apply: 'sChar_escape' . b seq: {b not: (b prim: '''') . b not: (b prim: ('',Character cr)) . b apply: '_'}}).
	  b addRule: 'regExp' as: ( b seq: {b prim: $/ asString . b apply: 'reCharClass' . b prim: $/ asString}).
	  b addInlineRule: 'reCharClass_unicode' as: (b seq: {b prim: '\p{' . b plus: (b regex: '[A-Za-z]') . b prim: '}'}).
	  b addInlineRule: 'reCharClass_ordinary' as: (b seq: {b prim: '[' . b star: (b alt: { b prim: '\]' . b seq: {b not: (b prim: ']') . b apply: '_'}}) . b prim: ']'}).
	  b addRule: 'reCharClass' as: ( b alt: { b apply: 'reCharClass_unicode' . b apply: 'reCharClass_ordinary'}).
	  b addRule: 'number' as: ( b seq: {b opt: (b prim: '-') . b plus: (b apply: 'digit')}).
	  b addInlineRule: 'space_singleLine' as: (b seq: {b prim: '//' . b star: (b seq: {b not: (b prim: ('',Character cr)) . b apply: '_'}) . b prim: ('',Character cr)}).
	  b addInlineRule: 'space_multiLine' as: (b seq: {b prim: '/*' . b star: (b seq: {b not: (b prim: '*/') . b apply: '_'}) . b prim: '*/'}).
	  b addRule: 'space' as: (b alt: { b regex: '[\s]' . b apply: 'space_singleLine' . b apply: 'space_multiLine'}).
	  ^ b buildGrammar
	
