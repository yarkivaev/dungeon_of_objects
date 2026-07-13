as yet unclassified
initialize
	super initialize.
	
	type := 'Treasury'.
	price := 1500.
	time := 60.
	maxHp := 150.
	hp := maxHp.
	size := 3.
	
	player maxGoldAdd: 1500.