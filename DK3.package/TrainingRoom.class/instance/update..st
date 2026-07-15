as yet unclassified
update: deltaTime
	free ifFalse: [
		timeCounter := timeCounter + deltaTime.
		
		timeCounter >= trainingTime ifTrue: 	[
			
		].
	].
	