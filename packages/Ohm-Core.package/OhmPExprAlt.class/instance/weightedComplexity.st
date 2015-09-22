accessing
weightedComplexity


	^ 4 + (self terms collect: [:e | e weightedComplexity]) sum