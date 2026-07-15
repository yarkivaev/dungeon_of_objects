initialization
initialize
	super initialize. 
	"set windows size to 800x600"
	self extent: 800 @ 600.
	gameRender := DK3Render new.
	lastTickTime := Time millisecondClockValue. 
	self startStepping.
