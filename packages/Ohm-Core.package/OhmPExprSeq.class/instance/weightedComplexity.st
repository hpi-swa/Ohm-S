accessing
weightedComplexity


	^ 3 + (self terms collect: [:e | e weightedComplexity]) sum