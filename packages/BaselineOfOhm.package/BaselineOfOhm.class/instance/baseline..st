baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'JSON' with: 
					[ spec file: 'JSON-ul.35';	
       					repository: 'http://www.squeaksource.com/JSON'];
				package: 'Ohm-Core' with: [spec requires: #('libraries')];
				package: 'Ohm-Grammars' with: [spec requires: #('core')];
				package: 'Ohm-Support' with: [spec requires: #('core' 'libraries')];
				yourself.
			spec
				group: 'default' with: #('Ohm-Core' 'Ohm-Grammars' 'Ohm-Support');
				group: 'core' with: #('Ohm-Core');
				group: 'libraries' with: #('JSON')].
			
	spec 
		for: #(#'squeak5.1.x' #'squeak4.6.x') 
		do: [
			spec 
				package: 'VB-Regex' 
				with: [spec repository: 'http://www.squeaksource.com/Regex'].
			spec group: 'libraries' with: #('JSON' 'VB-Regex')].
			
	^ spec
