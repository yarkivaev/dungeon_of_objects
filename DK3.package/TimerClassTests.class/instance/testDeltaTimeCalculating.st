as yet unclassified
testDeltaTimeCalculating
	timer := Timer new.
	
	Transcript show: timer calculateDeltaTime.
	
	self assert: timer calculateDeltaTime isNumber.
	
