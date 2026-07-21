as yet unclassified
nearestMarks: marks limit: anInteger
	| sorted count |
	sorted := marks asSortedCollection: [ :a :b |
		(self position dist: a) < (self position dist: b) ].
	count := anInteger min: sorted size.
	^ sorted asArray copyFrom: 1 to: count
