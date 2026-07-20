as yet unclassified
globalPath: aPath
	path := aPath.
	
	rooms getDict valuesDo: [ :creature |
		creature setPath: aPath.
		creature setMorph.
	].