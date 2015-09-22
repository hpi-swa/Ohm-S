as yet unclassified
recompile
	"This is only for reseting and should not be used in ordinary compilation, as this method also resets the loading state."

	<flag: #todo> "Add notification for new grammar. And think about whether this is the right place for it --pre"
	| oldInstance |
	oldInstance := self OhmInstance.
	self OhmInstance: nil.
	isLoading := false.
	self OhmInstance.
	oldInstance ifNotNil: [OhmChangeNotifier uniqueInstance
		grammar: oldInstance modifiedTo: self OhmInstance].
	^ self OhmInstance 