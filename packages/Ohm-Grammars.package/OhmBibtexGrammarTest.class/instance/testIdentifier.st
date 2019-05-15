tests
testIdentifier
	
	startRule := #identifier.
	self 
		shouldParseAll:	{'article' . 'Article' . 'Ari-cle' . 'arti+cle' . 'article*'};
		shouldntParseAny: {'0arctile' . '#article' . '=article' . '%article' . 'art#icle' . 'arti%cle' . 'art icle' . 'ar"ticle' . 'art,icle' . 'arti''cle' . 'art{icl}e' }.