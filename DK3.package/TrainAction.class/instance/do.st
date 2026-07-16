as yet unclassified
do
	ticksLeft = ((room instVarNamed: 'trainingTime') - 1) ifTrue: [
		actor game ifNotNil: [
			actor game addEvent: (Dictionary new
				at: #type put: #trainStart;
				at: #tick put: actor game getTimer;
				at: #actor put: actor;
				at: #room put: room;
				yourself)
		]
	].

	ticksLeft := ticksLeft - 1.
	
	ticksLeft <= 0 ifTrue: [
		actor game ifNotNil: [
			actor game addEvent: (Dictionary new
				at: #type put: #trainEnd;
				at: #tick put: actor game getTimer;
				at: #actor put: actor;
				at: #room put: room;
				yourself)
		].
		
		actor gainLevel: 1.
		self initializeTimer
	]
