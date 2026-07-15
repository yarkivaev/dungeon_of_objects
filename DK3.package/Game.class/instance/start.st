as yet unclassified
start
	isRunning := true.
	world := GameUpdate new.

	timer := Timer new.
	timer setWorld: world setGame: self.
	timer start.