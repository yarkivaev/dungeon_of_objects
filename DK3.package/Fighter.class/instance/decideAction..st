as yet unclassified
decideAction: worldCreatures

	| enemies sortedEnemies nearestEnemy trainingRoom |
	enemies := worldCreatures select: [ :each | 
		(each getPlayer ~= self getPlayer) and: [ each ~= self and: [ each health > 0 ] ] ].
	
	enemies isEmpty ifFalse: [ 
		currentAction := nil.
		sortedEnemies := enemies sorted: [ :a :b | 
			(self distanceTo: a) < (self distanceTo: b) ].
		
		nearestEnemy := sortedEnemies first.
		^ AttackAction actor: self target: nearestEnemy
	].

	currentAction ifNotNil: [ 
		(currentAction isKindOf: TrainAction) ifTrue: [ ^ currentAction ]
	].

	(Random new next < 0.2) ifTrue: [
		trainingRoom := self currentRoom.
		
		((trainingRoom isNil) not and: [ trainingRoom isKindOf: TrainingRoom ]) ifTrue: [
			currentAction := TrainAction actor: self room: trainingRoom.
			^ currentAction
		]
	].

	^ IdleAction actor: self