as yet unclassified
testDecideActionPicksReachableMarkOverNearerUnreachable
	| game digger chosen |
	game := Game new.
	2 to: 8 do: [ :x |
		game map atX: x y: 4 put: (FloorTile new setMap: game map x: x y: 4) ].
	game map atX: 3 y: 2 put: (EarthTile new setMap: game map x: 3 y: 2).
	#(2 3 4) do: [ :x |
		#(1 2 3) do: [ :y |
			(x = 3 and: [ y = 2 ]) ifFalse: [
				game map atX: x y: y put: (EarthTile new setMap: game map x: x y: y) ] ] ].
	game map atX: 8 y: 5 put: (EarthTile new setMap: game map x: 8 y: 5).
	game map toggleMarkAtX: 3 y: 2.
	game map toggleMarkAtX: 8 y: 5.
	digger := Digger new.
	digger position: 2.0 @ 4.0.
	digger game: game.
	chosen := digger decideAction: Array new.
	self
		assert: chosen target
		equals: 8 @ 5
		description: 'digger chose an unreachable nearer mark instead of a reachable far one'
