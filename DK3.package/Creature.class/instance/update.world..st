as yet unclassified
update: deltaTime world: worldCreatures
	| chosenAction |
	self health <= 0 ifTrue: [ ^ self ].

	self startOfTurnPhase.
	
	chosenAction := self decideAction: worldCreatures.
	
	chosenAction do