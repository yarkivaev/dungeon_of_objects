as yet unclassified
testClassCreation
	game := Game new.
	game start.
	
	self assert: game getWorld ~= nil.
	self assert: game getTimer ~= nil.
	self assert: game getIsRunning = true.