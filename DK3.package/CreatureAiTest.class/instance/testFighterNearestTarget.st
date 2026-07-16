as yet unclassified
testFighterNearestTarget

	| goblin nearDigger farDigger world action player1 player2 |
	
	player1 := User new.
	player2 := User new.
	
	goblin := Goblin spawn: (0@0) player: player2.
		
	nearDigger := Digger spawn: (0@0) player: player1.
	
	farDigger := Digger spawn: (5@5) player: player1.
	
	world := OrderedCollection with: goblin with: nearDigger with: farDigger.
	
	action := goblin decideAction: world.
	self assert: (action class == AttackAction).
	self assert: (action target == nearDigger)