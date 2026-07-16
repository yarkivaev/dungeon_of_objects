as yet unclassified
decideAction: worldCreatures

	| visibleEnemies sortedEnemies |
	visibleEnemies := worldCreatures select: [ :each | 
		(each isKindOf: Fighter) 
			and: [ (each getPlayer ~= self getPlayer) 
			and: [ (each health > 0)
			and: [ (self distanceTo: each) <= 5 ] ] ] ].
	
	visibleEnemies isEmpty ifFalse: [ 
		sortedEnemies := visibleEnemies sorted: [ :a :b | 
			(self distanceTo: a) < (self distanceTo: b) ].
		^ FleeAction actor: self
	].

	^ WorkAction actor: self workType: self findWork