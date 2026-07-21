as yet unclassified
update: deltaTime
	| creatureClass |
	timeCounter := timeCounter + deltaTime.
	
	player getLairs < player getRooms getDict size ifTrue: [
		timeCounter >= delay ifTrue: [
			timeCounter := 0.
			
			creatureClass := Smalltalk at: (Creature getRandomCreature) asSymbol.
			creatureClass := creatureClass spawn: 1 player: player.
			
			player addCreature: creatureClass id: creatureClass getId.
		].
	].

	timeCounter > delay ifTrue: [
		timeCounter := delay.	
	]