as yet unclassified
replaceWith: aNewTileClass
	| newTile |
	newTile := aNewTileClass new setMap: map x: x y: y.
	^ newTile