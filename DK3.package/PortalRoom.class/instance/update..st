as yet unclassified
update: deltaTime
	timeCounter := timeCounter + deltaTime.
	
	player getLairs < player getRooms size ifTrue: [
		timeCounter >= delay ifTrue: [
			timeCounter := 0.
			Creature new.
		].
	].

	timeCounter > delay ifTrue: [
		timeCounter := delay.	
	]