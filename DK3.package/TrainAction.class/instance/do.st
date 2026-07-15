as yet unclassified
do
	ticksLeft := ticksLeft - 1.
	
	ticksLeft <= 0 ifTrue: [
		actor gainLevel: 1.
		self initializeTimer
	]