initialize-release
initialize

	super initialize.
	eventSource := SystemEventManager new.
	silenceLevel := 0.