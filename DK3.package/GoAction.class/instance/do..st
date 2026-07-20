as yet unclassified
do: deltaTime

	| currentPos |
	currentPos := actor position.
	actor position: (currentPos x + (5 * deltaTime)) @ currentPos y.
