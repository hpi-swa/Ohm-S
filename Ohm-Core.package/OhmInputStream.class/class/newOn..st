instance creation
newOn: aSequencableCollection

	^ (self new)
		contents: aSequencableCollection;
		yourself