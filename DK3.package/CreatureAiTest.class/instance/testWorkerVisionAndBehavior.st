as yet unclassified
testWorkerVisionAndBehavior

	| digger goblin world action |
	
	digger := Digger newAlly.
	digger position: (0@0).

	goblin := Goblin newEnemy.
	goblin position: (10@10).
	
	world := OrderedCollection with: digger with: goblin.
	
	action := digger decideAction: world.
	self assert: (action class == WorkAction).
	self assert: (action workType == #digWall).

	goblin position: (2@2).
	action := digger decideAction: world.
	self assert: (action class == FleeAction)
