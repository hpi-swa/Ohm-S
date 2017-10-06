boostrapping
bootstrapOhmGrammar

	| b |
b := OhmGrammarBuilder new.
b setGrammarName: 'Ohm'.

b addRule:'Grammar'as: (b seq: {b apply: #GrammarHeader . b prim: '{' . b star: (b apply: #Rule) . b prim: '}'}).
b addInlineRule:'escapeChar_carriageReturn'as: (b prim: '\r').
b addInlineRule:'reCharClass_unicode'as: (b seq: {b prim: '\p{' . b plus: (b regex: '[A-Za-z]') . b prim: '}'}).
b addInlineRule:'reCharClass_ordinary'as: (b seq: {b prim: '[' . b star: (b alt: {b prim: '\]' . b seq: {b not: (b prim: ']') . b apply: #any}}) . b prim: ']'}).
b addRule:'Term'as: (b alt: {b apply: #'Term_inline' . b apply: #Seq}).
b addInlineRule:'comment_multiLine'as: (b seq: {b prim: '/*' . b star: (b seq: {b not: (b prim: '*/') . b apply: #any}) . b prim: '*/'}).
b addRule:'number'as: (b seq: {b opt: (b prim: '-') . b plus: (b apply: #digit)}).
b addInlineRule:'Base_terminal'as: (b apply: #ohmTerminal).
b addRule:'oneCharTerminal'as: (b seq: {b prim: '"' . b apply: #terminalChar . b prim: '"'}).
b addRule:'Alt'as: (b alt: {b apply: #'Alt_rec' . b apply: #Term}).
b addRule:'keyword'as: (b alt: {b apply: #'keyword_undefined' . b apply: #'keyword_null' . b apply: #'keyword_true' . b apply: #'keyword_false'}).
b addRule:'regExp'as: (b seq: {b prim: '/' . b apply: #reCharClass . b prim: '/'}).
b addInlineRule:'SuperGrammar_qualified'as: (b seq: {b prim: '<:' . b apply: #ident . b prim: '.' . b apply: #ident}).
b addInlineRule:'keyword_null'as: (b seq: {b prim: 'null' . b not: (b apply: #nameRest)}).
b addRule:'nameRest'as: (b alt: {b prim: '_' . b apply: #alnum}).
b addRule:'Seq'as: (b star: (b apply: #Iter)).
b addInlineRule:'Iter_star'as: (b seq: {b apply: #Pred . b prim: '*'}).
b addRule:'GrammarHeader'as: (b seq: {b apply: #GrammarName . b opt: (b apply: #SuperGrammar)}).
b addInlineRule:'Rule_override'as: (b seq: {b apply: #ident . b opt: (b apply: #ruleDescr) . b prim: ':=' . b apply: #Alt}).
b addInlineRule:'Base_paren'as: (b seq: {b prim: '(' . b apply: #Alt . b prim: ')'}).
b addRule:'ruleDescrText'as: (b star: (b seq: {b not: (b prim: ')') . b apply: #any})).
b addRule:'Base'as: (b alt: {b apply: #'Base_application' . b apply: #'Base_range' . b apply: #'Base_terminal' . b apply: #'Base_paren'}).
b addInlineRule:'escapeChar_unicodeEscape'as: (b seq: {b prim: '\u' . b apply: #hexDigit . b apply: #hexDigit . b apply: #hexDigit . b apply: #hexDigit}).
b addInlineRule:'Base_application'as: (b seq: {b apply: #ident . b not: (b alt: {b seq: {b opt: (b apply: #ruleDescr) . b prim: '='} . b prim: ':=' . b prim: '+='})}).
b addInlineRule:'escapeChar_hexEscape'as: (b seq: {b prim: '\x' . b apply: #hexDigit . b apply: #hexDigit}).
b addInlineRule:'Iter_plus'as: (b seq: {b apply: #Pred . b prim: '+'}).
b addInlineRule:'comment_singleLine'as: (b seq: {b prim: '//' . b star: (b seq: {b not: (b prim: '
') . b apply: #any}) . b prim: '
'}).
b addRule:'nameFirst'as: (b alt: {b prim: '_' . b apply: #letter}).
b addInlineRule:'GrammarName_qualified'as: (b seq: {b apply: #ident . b prim: '.' . b apply: #ident}).
b addRule:'comment'as: (b alt: {b apply: #'comment_singleLine' . b apply: #'comment_multiLine'}).
b addInlineRule:'GrammarName_unqualified'as: (b apply: #ident).
b addRule:'terminalChar'as: (b alt: {b apply: #escapeChar . b seq: {b not: (b prim: '\') . b not: (b prim: '"') . b not: (b prim: '
') . b apply: #any}}).
b addInlineRule:'keyword_false'as: (b seq: {b prim: 'false' . b not: (b apply: #nameRest)}).
b addRule:'ohmTerminal'as: (b alt: {b apply: #keyword . b apply: #string . b apply: #regExp . b apply: #number}).
b addInlineRule:'escapeChar_tab'as: (b prim: '\t').
b addInlineRule:'escapeChar_doubleQuote'as: (b prim: '\"').
b addInlineRule:'Base_range'as: (b seq: {b apply: #oneCharTerminal . b prim: '..' . b apply: #oneCharTerminal}).
b addRule:'ident'as: (b seq: {b not: (b apply: #keyword) . b apply: #name}).
b addRule:'ruleDescr'as: (b seq: {b prim: '(' . b apply: #ruleDescrText . b prim: ')'}).
b addInlineRule:'escapeChar_backspace'as: (b prim: '\b').
b addRule:'caseName'as: (b seq: {b prim: '--' . b star: (b seq: {b not: (b prim: '
') . b apply: #space}) . b apply: #name . b star: (b seq: {b not: (b prim: '
') . b apply: #space}) . b alt: {b prim: '
' . b lookahead: (b prim: '}')}}).
b addRule:'Rule'as: (b alt: {b apply: #'Rule_define' . b apply: #'Rule_override' . b apply: #'Rule_extend'}).
b addRule:'GrammarName'as: (b alt: {b apply: #'GrammarName_qualified' . b apply: #'GrammarName_unqualified'}).
b addInlineRule:'Term_inline'as: (b seq: {b apply: #Seq . b apply: #caseName}).
b addRule:'reCharClass'as: (b alt: {b apply: #'reCharClass_unicode' . b apply: #'reCharClass_ordinary'}).
b addInlineRule:'Iter_opt'as: (b seq: {b apply: #Pred . b prim: '?'}).
b addInlineRule:'Alt_rec'as: (b seq: {b apply: #Term . b prim: '|' . b apply: #Alt}).
b addInlineRule:'SuperGrammar_unqualified'as: (b seq: {b prim: '<:' . b apply: #ident}).
b addInlineRule:'Rule_define'as: (b seq: {b apply: #ident . b opt: (b apply: #ruleDescr) . b prim: '=' . b apply: #Alt}).
b addInlineRule:'Rule_extend'as: (b seq: {b apply: #ident . b prim: '+=' . b apply: #Alt}).
b addRule:'SuperGrammar'as: (b alt: {b apply: #'SuperGrammar_qualified' . b apply: #'SuperGrammar_unqualified'}).
b addInlineRule:'Pred_lookahead'as: (b seq: {b prim: '&' . b apply: #Base}).
b addRule:'name'as: (b seq: {b apply: #nameFirst . b star: (b apply: #nameRest)}).
b extendRule:'space'with: (b apply: #comment).
b addInlineRule:'keyword_true'as: (b seq: {b prim: 'true' . b not: (b apply: #nameRest)}).
b addRule:'Iter'as: (b alt: {b apply: #'Iter_star' . b apply: #'Iter_plus' . b apply: #'Iter_opt' . b apply: #Pred}).
b addRule:'Grammars'as: (b star: (b apply: #Grammar)).
b addInlineRule:'escapeChar_backslash'as: (b prim: '\\').
b addInlineRule:'escapeChar_lineFeed'as: (b prim: '\n').
b addInlineRule:'keyword_undefined'as: (b seq: {b prim: 'undefined' . b not: (b apply: #nameRest)}).
b addRule:'escapeChar'as: (b alt: {b apply: #'escapeChar_backslash' . b apply: #'escapeChar_doubleQuote' . b apply: #'escapeChar_singleQuote' . b apply: #'escapeChar_backspace' . b apply: #'escapeChar_lineFeed' . b apply: #'escapeChar_carriageReturn' . b apply: #'escapeChar_tab' . b apply: #'escapeChar_unicodeEscape' . b apply: #'escapeChar_hexEscape'}).
b addInlineRule:'escapeChar_singleQuote'as: (b prim: '\''').
b addInlineRule:'Pred_not'as: (b seq: {b prim: '~' . b apply: #Base}).
b addRule:'string'as: (b seq: {b prim: '"' . b star: (b apply: #terminalChar) . b prim: '"'}).
b addRule:'Pred'as: (b alt: {b apply: #'Pred_not' . b apply: #'Pred_lookahead' . b apply: #Base}).
^ b buildGrammar
	
