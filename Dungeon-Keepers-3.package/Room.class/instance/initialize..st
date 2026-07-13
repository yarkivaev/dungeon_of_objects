as yet unclassified
initialize: user
	super initialize.
	
	type := ''.
	player := user.
	
	hp := 0.
	maxHp := 0.
	size := 0.
	price := 0.
	time := 0.
	
	id := self class globalId.
	