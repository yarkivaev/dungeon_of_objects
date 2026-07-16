as yet unclassified
decideAction: worldCreatures

	| enemies sortedEnemies nearestEnemy |
	enemies := worldCreatures select: [ :each | 
		(each team ~= self team) and: [ each ~= self and: [ each health > 0 ] ] ].
	
	enemies isEmpty ifFalse: [ 
		sortedEnemies := enemies sorted: [ :a :b | 
			(self distanceTo: a) < (self distanceTo: b) ].
		
		nearestEnemy := sortedEnemies first.
		^ AttackAction actor: self target: nearestEnemy
	].

	^ IdleAction actor: self
