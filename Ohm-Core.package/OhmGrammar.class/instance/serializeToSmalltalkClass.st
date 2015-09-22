converting
serializeToSmalltalkClass

	self smalltalkPlaceholder ifNotNil: [
		self smalltalkPlaceholder class compile: 
		'serializedGrammar' , Character cr ,
		'^ ' , self grammarDefinitionString printString.]