as yet unclassified
update: deltaTime
	timeCounter := timeCounter = deltaTime.
	
	timeCounter > checkDelay ifTrue: [
		timeCounter := 0.
		self goldCheck.
	]