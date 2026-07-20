as yet unclassified
testDecideActionKeepsCurrentDigTarget
	| game digger kept |
	game := Game new.
	2 to: 8 do: [ :x |
		game map atX: x y: 4 put: (FloorTile new setMap: game map x: x y: 4) ].
	game map atX: 3 y: 5 put: (EarthTile new setMap: game map x: 3 y: 5).
	game map atX: 8 y: 5 put: (EarthTile new setMap: game map x: 8 y: 5).
	game map toggleMarkAtX: 3 y: 5.
	game map toggleMarkAtX: 8 y: 5.
	digger := Digger new.
	digger position: 2.0 @ 4.0.
	digger game: game.
	digger currentAction: (DigAction actor: digger target: 8 @ 5).
	kept := digger decideAction: Array new.
	self
		assert: kept target
		equals: 8 @ 5
		description: 'digger abandoned its far dig target for a nearer mark'
