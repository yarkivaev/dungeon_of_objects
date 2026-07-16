helperMethods
changeRunning
	isRunning ifFalse: [
		isRunning := true.	
	].
	isRunning ifTrue: [
		isRunning := false
	]