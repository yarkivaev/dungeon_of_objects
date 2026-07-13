as yet unclassified
start
	isRunning := true.
	world := GameWorld new.
	
	timer := Timer new.
	timer setWorld: world setGame: self.
	timer start.