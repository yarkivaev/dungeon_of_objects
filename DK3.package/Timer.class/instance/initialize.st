as yet unclassified
initialize
	super initialize.
	
	currentTime := 0.
	lastTime := Time millisecondClockValue.
	dt := 0.
	isRunning := true.