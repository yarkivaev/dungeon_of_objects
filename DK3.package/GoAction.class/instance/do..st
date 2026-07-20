as yet unclassified
do: deltaTime
	| current nextX gridY map startCell endCell cell |
	current := actor position.
	nextX := current x + (self pace * deltaTime).
	gridY := current y floor asInteger.
	map := actor game map.
	startCell := current x floor asInteger.
	endCell := nextX floor asInteger.
	startCell to: endCell do: [ :probe |
		(map isPassableAtX: probe y: gridY) ifFalse: [
			actor position: (probe - 1) @ gridY.
			^ self ] ].
	cell := nextX floor asInteger.
	(map isPassableAtX: (cell + 1) y: gridY) ifFalse: [
		actor position: cell @ gridY.
		^ self ].
	actor position: nextX @ current y.
