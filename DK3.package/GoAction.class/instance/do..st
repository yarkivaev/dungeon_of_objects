as yet unclassified
do: deltaTime
	| currentPos nextPos map gridX gridY |
	currentPos := actor position.
	nextPos := (currentPos x + (5 * deltaTime)) @ currentPos y.
	map := actor game map.
	gridX := nextPos x floor asInteger.
	gridY := nextPos y floor asInteger.
	(map isPassableAtX: gridX y: gridY) ifFalse: [ ^ self ].
	actor position: nextPos.
