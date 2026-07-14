as yet unclassified
testGameStopping
	game := Game new.
	game start.
	
	game exit.
	
	self assert: game getIsRunning = false.