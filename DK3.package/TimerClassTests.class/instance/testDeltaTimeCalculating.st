as yet unclassified
testDeltaTimeCalculating
	timer := Timer new.
	
	self assert: timer calculateDeltaTime isNumber.
	
