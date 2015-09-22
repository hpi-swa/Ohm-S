instance creation
newOn: aString

	^ (self new)
		stream: aString;
		start: 1;
		end: aString size;
		yourself