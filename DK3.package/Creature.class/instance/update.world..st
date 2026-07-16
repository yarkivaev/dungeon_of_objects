as yet unclassified
update: deltaTime world: worldCreatures

	| chosenAction oldActionClass |
	
	self health <= 0 ifTrue: [ ^ self ].
	
	self startOfTurnPhase.
	
	chosenAction := self decideAction: worldCreatures.
	
	oldActionClass := currentAction ifNotNil: [ currentAction class ] ifNil: [ nil ].
	
	oldActionClass ~= chosenAction class ifTrue: [
		self game ifNotNil: [
			self game addEvent: (Dictionary new
				at: #type put: #actionChanged;
				at: #tick put: self game getTimer;
				at: #actor put: self;
				at: #oldAction put: (oldActionClass ifNotNil: [ oldActionClass name ] ifNil: [ #none ]);
				at: #newAction put: chosenAction class name;
				yourself)
		]
	].
	
	currentAction := chosenAction.
	
	chosenAction do