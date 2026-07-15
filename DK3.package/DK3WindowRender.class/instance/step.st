stepping
step

	| currentTime deltaTime |
	currentTime := Time millisecondClockValue.
	
	deltaTime := (currentTime - lastTickTime) / 1000.0.
	lastTickTime := currentTime.

	gameRender camera update: deltaTime.

	self changed.
