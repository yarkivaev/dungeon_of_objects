as yet unclassified
decideAction: worldCreatures
	| visibleEnemies marks nearest |
	visibleEnemies := worldCreatures select: [ :each |
		(each isKindOf: Fighter)
			and: [ (each getPlayer ~= self getPlayer)
			and: [ (each health > 0)
			and: [ (self distanceTo: each) <= 5 ] ] ] ].
	visibleEnemies isEmpty ifFalse: [ ^ FleeAction actor: self ].
	marks := self game map markedPoints.
	marks isEmpty ifTrue: [ ^ IdleAction actor: self ].
	nearest := (marks asSortedCollection: [ :a :b |
		(self position dist: a) < (self position dist: b) ]) first.
	^ DigAction actor: self target: nearest
