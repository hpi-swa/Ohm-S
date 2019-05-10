actions
MethodDeclaration: aNode with: header and: pragmas and: code

	^ (self defaultExpression: header) , String cr ,
		(self defaultExpression: pragmas) , String cr ,
		(self defaultExpression: code)