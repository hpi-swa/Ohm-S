stream
contents: aCollection

	self contentStream: (ReadStream on: aCollection).
	self positionInfo: (Array new: aCollection size + 1).
	(1 to: self positionInfo size) do: [ :index |
		self positionInfo at: index put: (OhmPositionInfo new)]