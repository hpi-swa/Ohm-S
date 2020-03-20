instance creation
newOn: regex

	^ self new
		regexString: regex;
		regex: (RxParser preferredMatcherClass for: (RxParser new parse: regex));
		yourself