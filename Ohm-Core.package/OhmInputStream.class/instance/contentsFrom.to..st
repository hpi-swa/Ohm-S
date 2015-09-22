stream
contentsFrom: start to: end

	| content |
	content := self contentStream contents.
	^ content copyFrom: start to: end

