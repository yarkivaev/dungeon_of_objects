as yet unclassified
initialize
	super initialize.
	
	goldAmount := 5000.
	maxGold := 3000.
	paydayAmount := 0.
	foodAmount := 10.
	lairsCount := 0.
	
	roomsDict := Rooms new.
	creaturesDict := Creatures new.
	
	bestiaryDict := Dictionary new.
	