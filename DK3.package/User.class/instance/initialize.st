as yet unclassified
initialize
	super initialize.
	
	goldAmount := 1000.
	maxGold := 3000.
	
	paydayAmount := 0.
	paydayDelay := 120.
	paydayTimer := 0.
	
	foodAmount := 100.
	bestiaryDict := Dictionary new.
	