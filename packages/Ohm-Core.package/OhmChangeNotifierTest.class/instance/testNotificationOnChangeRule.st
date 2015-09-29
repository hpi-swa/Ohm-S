as yet unclassified
testNotificationOnChangeRule

	| g spy |
	g := OhmCompiler compileGrammarDefinition: 'Foo { foo = ''foo'' }' 
			inNamespace: self theTestNamespace namespaceName. 

	spy := OhmTestSpy new.
	OhmChangeNotifier uniqueInstance 
		notify: spy 
		ofOhmChangesOfItem: OhmChangeNotifier ruleKind 
		change: #Modified 
		using: #ruleChanged:. 

	OhmCompiler compileRule: 'foo = ''bar''' forGrammar: g.
	self assert: spy messages size equals: 1.
	self assert: spy messages first equals: #ruleChanged.