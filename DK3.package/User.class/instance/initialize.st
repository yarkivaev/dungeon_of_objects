as yet unclassified
initialize
	super initialize.
	
	ObjectInterface addObject: self.
	
	goldAmount := 1000.
	maxGold := 3000.
	paydayAmount := 0.
	foodAmount := 10.
	
	roomsDict := Rooms new.
	creaturesDict := Creatures new.
	
	bestiaryDict := Dictionary new.
	