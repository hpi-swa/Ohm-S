preferences
shouldStoreTestParseResults
	
	<preference: 'Store test results'
		category: 'Ohm'
		description: 'When activated, all the parsing results of OhmSyntaxTestCase runs are stored. This is useful for some tools, e.g. for the Gramada test runner tools. It also can consume quite some space.'
		type: #Boolean>
	^ ShouldStoreTestParseResults ifNil: [false]