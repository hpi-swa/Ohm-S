instance creation
on: aSequencableCollection

	| newStream |
	newStream := aSequencableCollection ohmInputStreamClass newOn: aSequencableCollection.
	^ newStream