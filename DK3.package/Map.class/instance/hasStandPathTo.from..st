as yet unclassified
hasStandPathTo: mark from: start
	| neighbors path |
	neighbors := mark fourNeighbors select: [ :point |
		(self isValidX: point x y: point y)
			and: [ self isWalkableAtX: point x y: point y ] ].
	neighbors do: [ :stand |
		path := self findPathFrom: start to: stand.
		path isEmpty ifFalse: [ ^ true ] ].
	^ false
