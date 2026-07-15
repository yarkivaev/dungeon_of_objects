as yet unclassified
initialize
	super initialize.
	
	type := 'Lair'.
	hp := 70.
	size := 1.
	price := 500.
	time := 30.
		
	maxCreatures := 1.
	
	player lairAdd.
	
	