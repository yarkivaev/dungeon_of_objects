as yet unclassified
replaceWith: aNewTileClass
	| newTile |
	newTile := aNewTileClass new setMap: map x: x y: y.
	map atX: x y: y put: newTile.
	^ newTile
