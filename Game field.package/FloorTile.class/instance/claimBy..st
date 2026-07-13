as yet unclassified
claimBy: aKeeper
	| newTile |
	newTile := self replaceWith: ClaimedFloorTile.
	newTile owner: aKeeper.
	^ newTile