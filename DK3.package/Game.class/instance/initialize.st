initialize-release
initialize
	super initialize.
	events := OrderedCollection new.
	isRunning := false.
