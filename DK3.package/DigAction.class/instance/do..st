as yet unclassified
do: deltaTime
	| map tile stand path nextCell amount mined gridPos neighbors |
	map := actor game map.
	gridPos := (actor position x floor asInteger) @ (actor position y floor asInteger).
	(map isMarkedAtX: target x y: target y) ifFalse: [ ^ self ].
	tile := map atX: target x y: target y.
	tile isDiggable ifFalse: [
		map clearMarkAtX: target x y: target y.
		^ self ].
	neighbors := target fourNeighbors select: [ :point |
		map isWalkableAtX: point x y: point y ].
	((gridPos x - target x) abs + (gridPos y - target y) abs = 1
		and: [ map isWalkableAtX: gridPos x y: gridPos y ]) ifTrue: [
			amount := (50 * deltaTime) max: 1.
			mined := tile dig: amount.
			mined > 0 ifTrue: [ actor getPlayer goldAdd: mined ].
			(map atX: target x y: target y) isDiggable ifFalse: [
				map clearMarkAtX: target x y: target y ].
			^ self ].
	neighbors isEmpty ifTrue: [ ^ self ].
	stand := (neighbors asSortedCollection: [ :a :b |
		(a dist: gridPos) < (b dist: gridPos) ]) first.
	path := map findPathFrom: gridPos to: stand.
	path size < 2 ifTrue: [ ^ self ].
	nextCell := path at: 2.
	(map isPassableAtX: nextCell x y: nextCell y) ifFalse: [ ^ self ].
	actor position: nextCell.
