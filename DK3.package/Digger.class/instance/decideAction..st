as yet unclassified
decideAction: worldCreatures
	| visibleEnemies marks gridPos nearest |
	visibleEnemies := worldCreatures select: [ :each |
		(each isKindOf: Fighter)
			and: [ (each getPlayer ~= self getPlayer)
			and: [ (each health > 0)
			and: [ (self distanceTo: each) <= 5 ] ] ] ].
	visibleEnemies isEmpty ifFalse: [ ^ FleeAction actor: self ].
	gridPos := (self position x rounded) @ (self position y rounded).
	marks := self game map markedPoints select: [ :mark |
		((self game map atX: mark x y: mark y) isDiggable)
			and: [ self game map hasStandPathTo: mark from: gridPos ] ].
	marks isEmpty ifTrue: [ ^ IdleAction actor: self ].
	(currentAction isKindOf: DigAction) ifTrue: [
		(marks includes: currentAction target) ifTrue: [ ^ currentAction ] ].
	nearest := (marks asSortedCollection: [ :a :b |
		(self position dist: a) < (self position dist: b) ]) first.
	^ DigAction actor: self target: nearest
