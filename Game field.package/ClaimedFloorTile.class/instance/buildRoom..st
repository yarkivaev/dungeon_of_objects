as yet unclassified
buildRoom: aRoomType
	| newTile |
	newTile := self replaceWith: RoomTile.
	newTile setOwner: owner type: aRoomType.
	^ newTile