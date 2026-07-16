as yet unclassified
testHealerPriorities

	| dragon monk woundedFriend woundedEnemy world action |
	
	dragon := Dragon newAlly.
	dragon position: (0@0).
	
	monk := Monk newAlly.
	monk position: (3@3).
	
	woundedFriend := Digger newAlly.
	woundedFriend position: (1@1).
	woundedFriend takeDamage: 40. 
	
	woundedEnemy := Goblin newEnemy.
	woundedEnemy position: (2@2).
	woundedEnemy takeDamage: 50. 
	
	world := OrderedCollection with: dragon with: monk with: woundedFriend with: woundedEnemy.
	
	action := dragon decideAction: world.
	self assert: (action class == HealAction).
	self assert: (action patient == woundedFriend).
	
	action := monk decideAction: world.
	self assert: (action class == HealAction).
	self assert: (action patient == woundedEnemy)
