as yet unclassified
start
	isRunning := true.
	world := GameUpdate new.
	world game: self.

	timer := Timer new.
	timer setWorld: world setGame: self.
	timer start.