actions
GrammarNameQualified: aNode with: packageName with: x with: grammarName

	self grammarToBuild namespace: (OhmNamespace named: packageName interval contents).
	self grammarToBuild grammarName: grammarName interval contents.