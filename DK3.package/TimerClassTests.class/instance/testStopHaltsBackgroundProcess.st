as yet unclassified
testStopHaltsBackgroundProcess
	| timer |
	timer := Timer new.
	timer start.
	timer stop.
	self
		assert: timer getIsRunning
		equals: false
		description: 'timer kept running after stop'
