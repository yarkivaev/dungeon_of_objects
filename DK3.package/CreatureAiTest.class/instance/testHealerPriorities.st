as yet unclassified
testHealerPriorities

	| dragon monk woundedFriend woundedEnemy world action player1 player2 |
	
	player1 := User new.
	player2 := User new.
	
	dragon := Dragon spawn: (0@0) player: player1.
		
	monk := Monk spawn: (3@3) player: player1.
	
	woundedFriend := Digger spawn: (1@1) player: player1.
	woundedFriend takeDamage: 40. 
	
	woundedEnemy := Goblin spawn: (2@2) player: player2.
	woundedEnemy takeDamage: 50. 
	
	world := OrderedCollection with: dragon with: monk with: woundedFriend with: woundedEnemy.
	
	action := dragon decideAction: world.
	self assert: (action class == HealAction).
	self assert: (action patient == woundedFriend).
	
	action := monk decideAction: world.
	self assert: (action class == HealAction).
	self assert: (action patient == woundedEnemy)
