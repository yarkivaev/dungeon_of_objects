as yet unclassified
testFighterTrainingLogic

	| goblin room world action |
	
	room := TrainingRoom new.
	
	goblin := Goblin newEnemy.
	goblin position: (0@0).
	goblin currentRoom: room. 
	
	world := OrderedCollection with: goblin.
	
	action := goblin decideAction: world.
	[ action class == TrainAction ] whileFalse: [ 
		action := goblin decideAction: world 
	].
	
	self assert: (action class == TrainAction).
	
	39 timesRepeat: [ action do ].
	self assert: (goblin level == 1). 
	
	action do.
	action do.
	
	self assert: (goblin level == 2).
	self assert: (goblin health == 90).
	self assert: (goblin attack == 25)
