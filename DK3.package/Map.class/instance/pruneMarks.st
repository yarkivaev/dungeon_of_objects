as yet unclassified
pruneMarks
	marks copy do: [ :point |
		((self isValidX: point x y: point y) and: [ (self atX: point x y: point y) isDiggable ]) ifFalse: [
			marks remove: point ifAbsent: [  ] ] ].
