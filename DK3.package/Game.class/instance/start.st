as yet unclassified
start
	isRunning := true.
	world := GameUpdate new.

	timer := Timer new.
	timer setWorld: world setGame: self.
	timer start.
	
	creatures := Creatures new.
	
	world addObject: rooms.
	world addObject: creatures.