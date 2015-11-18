as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'JSON' with: 
					[ spec file: 'JSON-ul.35';	
       					repository: 'http://www.squeaksource.com/JSON' ];
				package: 'VB-Regex' with: 
					[ spec repository: 'http://www.squeaksource.com/Regex' ];
				package: 'ContextS2-Core' with:
					[ spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/ContextSTrunk' ];
				package: 'Ohm-Core' with: [spec requires: #('libraries')];
				package: 'Ohm-Grammars' with: [spec requires: #('core')];
				yourself.
			spec
				group: 'default' with: #('Ohm-Core' 'Ohm-Grammars');
				group: 'core' with: #('Ohm-Core');
				group: 'libraries' with: #('JSON' 'VB-Regex' 'ContextS2-Core');
				group: 'TravisCI' with: #('Ohm-Core')	];
				yourself