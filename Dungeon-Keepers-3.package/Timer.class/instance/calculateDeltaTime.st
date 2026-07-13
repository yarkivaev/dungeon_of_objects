helperMethods
calculateDeltaTime
	currentTime := Time millisecondClockValue.
	dt := (currentTime - lastTime)  /  1000.0.
	lastTime := currentTime.