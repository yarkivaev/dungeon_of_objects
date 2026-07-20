as yet unclassified
processPacket: anInputFrame
	| gridPoint |
	consumedPacket := false.
	lastCenter ifNil: [ ^ self ].
	gridPoint := camera gridFromScreen: anInputFrame mousePosition windowCenter: lastCenter.
	anInputFrame isMouseDown ifTrue: [
		(worldMap isValidX: gridPoint x y: gridPoint y)
			ifTrue: [ pendingMarkTile := gridPoint ]
			ifFalse: [ pendingMarkTile := nil ].
		^ self ].
	anInputFrame isMouseUp ifTrue: [
		(pendingMarkTile notNil
			and: [ pendingMarkTile = gridPoint
			and: [ worldMap isValidX: gridPoint x y: gridPoint y ] ]) ifTrue: [
				worldMap toggleMarkAtX: gridPoint x y: gridPoint y.
				consumedPacket := true ].
		pendingMarkTile := nil ].
