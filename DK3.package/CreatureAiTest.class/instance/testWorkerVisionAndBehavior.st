as yet unclassified
testWorkerVisionAndBehavior

	| digger goblin world action player1 player2 |
	
	player1 := User new.
	player2 := User new.
	
	digger := Digger spawn: (0@0) player: player1.

	goblin := Goblin spawn: (10@10) player: player2.
	
	world := OrderedCollection with: digger with: goblin.
	
	action := digger decideAction: world.
	self assert: (action class == WorkAction).
	self assert: (action workType == #digWall).

	goblin position: (2@2).
	action := digger decideAction: world.
	self assert: (action class == FleeAction)
