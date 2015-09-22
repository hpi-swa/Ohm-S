accessing
positionInfoAt: position

	"Shifted by one as there is the 0 position in the input stream"
	^ self positionInfo at: position + 1