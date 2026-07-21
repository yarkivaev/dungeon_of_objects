as yet unclassified
globalPath: aPath
	path := aPath.
	
	map do: [ :row |
		row do: [ :tile |
			tile setPath: aPath.
			tile setMorph.
		].
	].
