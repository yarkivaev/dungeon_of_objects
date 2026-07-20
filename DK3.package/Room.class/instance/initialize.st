as yet unclassified
initialize
	super initialize.
	
	ObjectInterface addObject: self.
	
	type := ''.
	
	hp := 0.
	maxHp := 0.
	size := 0.
	price := 0.
	time := 0.
	morph := ImageMorph new.
	
	id := self class globalId.
	