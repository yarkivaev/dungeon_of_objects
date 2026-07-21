as yet unclassified
testDoDoesNotLeapAFullCellOnShortTick
	| game digger action before |
	game := Game new.
	2 to: 5 do: [ :x |
		game map atX: x y: 3 put: (FloorTile new setMap: game map x: x y: 3) ].
	game map atX: 6 y: 3 put: (EarthTile new setMap: game map x: 6 y: 3).
	game map toggleMarkAtX: 6 y: 3.
	digger := Digger new.
	digger position: 2.0 @ 3.0.
	digger game: game.
	before := digger position copy.
	action := DigAction actor: digger target: 6 @ 3.
	action do: 0.05.
	self
		assert: (digger position dist: before) < 1
		description: 'digger leapt a full cell on a short tick'
