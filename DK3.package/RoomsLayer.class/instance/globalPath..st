as yet unclassified
globalPath: aPath
	path := aPath.
	
	rooms getDict valuesDo: [ :room |
		room setPath: aPath.
		room setMorph.
	].