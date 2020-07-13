private
calculateSourceMap

	^ (self grammar semanticAction: OhmSourceMapping new) createSourceMapFor: self