as yet unclassified
do: deltaTime
	| map tile path nextCell amount mined gridPos neighbors |
	map := actor game map.
	gridPos := (actor position x rounded) @ (actor position y rounded).
	(map isMarkedAtX: target x y: target y) ifFalse: [ ^ self ].
	tile := map atX: target x y: target y.
	tile isDiggable ifFalse: [
		map clearMarkAtX: target x y: target y.
		^ self ].
	neighbors := target fourNeighbors select: [ :point |
		(map isValidX: point x y: point y)
			and: [ map isWalkableAtX: point x y: point y ] ].
	((gridPos x - target x) abs + (gridPos y - target y) abs = 1
		and: [ map isWalkableAtX: gridPos x y: gridPos y ]) ifTrue: [
			amount := 50 * deltaTime.
			mined := tile dig: amount.
			mined > 0 ifTrue: [ actor getPlayer goldAdd: mined ].
			(map atX: target x y: target y) isDiggable ifFalse: [
				map clearMarkAtX: target x y: target y ].
			^ self ].
	neighbors isEmpty ifTrue: [ ^ self ].
	self refreshStand: neighbors from: gridPos map: map.
	stand ifNil: [ ^ self ].
	path := map findPathFrom: gridPos to: stand.
	path size < 2 ifTrue: [ ^ self ].
	nextCell := path at: 2.
	(map isWalkableAtX: nextCell x y: nextCell y) ifFalse: [ ^ self ].
	self advanceToward: nextCell delta: deltaTime.
