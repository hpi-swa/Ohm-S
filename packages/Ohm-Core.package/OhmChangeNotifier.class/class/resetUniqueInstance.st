as yet unclassified
resetUniqueInstance
	"self resetUniqueInstance"

	UniqueInstance ifNotNil: [:u |
		UniqueInstance releaseAll.
		UniqueInstance := nil].