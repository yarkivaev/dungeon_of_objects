as yet unclassified
demolish
	| newTile |
	newTile := self replaceWith: ClaimedFloorTile.
	newTile owner: owner.
	^ newTile