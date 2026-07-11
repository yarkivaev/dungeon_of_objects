as yet unclassified
changeRunning
	isRunning ifFalse: [
		isRunning := true.	
	].
	isRunning ifTrue: [
		isRunning := false
	]