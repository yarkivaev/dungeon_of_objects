as yet unclassified
testFighterNearestTarget

	| goblin nearDigger farDigger world action |
	
	goblin := Goblin newEnemy.
	goblin position: (0@0).
	
	nearDigger := Digger newAlly.
	nearDigger position: (1@1).
	
	farDigger := Digger newAlly.
	farDigger position: (5@5).
	
	world := OrderedCollection with: goblin with: nearDigger with: farDigger.
	
	action := goblin decideAction: world.
	self assert: (action class == AttackAction).
	self assert: (action target == nearDigger)