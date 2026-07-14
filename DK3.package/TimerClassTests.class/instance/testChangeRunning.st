as yet unclassified
testChangeRunning
	timer := Timer new.
	
	self assert: timer getIsRunning = true.
	
	timer changeRunning.
	
	self assert: timer getIsRunning = false.
	
	