instance creation
newOn: aString from: start to: end

	^ (self new)
		stream: aString;
		start: start;
		end: end;
		yourself