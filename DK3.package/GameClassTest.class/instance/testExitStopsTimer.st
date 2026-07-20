as yet unclassified
testExitStopsTimer
	| game |
	game := Game new.
	game start: Creatures new.
	game exit.
	self
		assert: game getTimer getIsRunning
		equals: false
		description: 'timer kept running after game exit'
