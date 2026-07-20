as yet unclassified
update

	| currentPos |
	creatures do: [ :eachCreature | 
		currentPos := eachCreature position.
		eachCreature position: (currentPos x + 5) @ currentPos y.
	].
