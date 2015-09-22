failure recording
recordFailures: failureDescriptor

	failureDescriptor expressions do: [ :pexpr |
		self recordFailureOf: pexpr at: failureDescriptor position ]