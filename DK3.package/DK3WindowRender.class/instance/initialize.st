initialization
initialize
	super initialize. 
	self extent: 800 @ 600.
	gameRender := DK3Render new.
	lastTickTime := Time millisecondClockValue. 
	
	gameRender camera zoom: 1.0.
	gameRender camera position: 0 @ 0.
	
	self startStepping.
