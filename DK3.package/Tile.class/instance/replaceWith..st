as yet unclassified
replaceWith: aNewTileClass
	| newTile host |
	newTile := aNewTileClass new setMap: map x: x y: y.
	morph ifNotNil: [
		path
			ifNil: [ newTile paint: morph form ]
			ifNotNil: [
				newTile setPath: path.
				newTile setMorph ].
		host := transformMorph.
		host ifNil: [
			host := TransformMorph new.
			host color: Color transparent.
			host borderWidth: 0 ].
		host removeAllMorphs.
		host addMorph: newTile morph getMorph.
		newTile transformer: host ].
	map atX: x y: y put: newTile.
	^ newTile
