as yet unclassified
processPacket: anInputFrame
	| gridPoint |
	consumedPacket := false.
	lastCenter ifNil: [ ^ self ].
	gridPoint := camera gridFromScreen: anInputFrame mousePosition windowCenter: lastCenter.
	anInputFrame isMouseDown ifTrue: [
		(worldMap isValidX: gridPoint x y: gridPoint y)
			ifTrue: [ pendingMarkClick := DK3MarkClick screen: anInputFrame mousePosition grid: gridPoint ]
			ifFalse: [ pendingMarkClick := nil ].
		^ self ].
	anInputFrame isMouseUp ifTrue: [
		(pendingMarkClick notNil
			and: [ (pendingMarkClick commitsAtScreen: anInputFrame mousePosition grid: gridPoint)
			and: [ worldMap isValidX: gridPoint x y: gridPoint y ] ]) ifTrue: [
				worldMap toggleMarkAtX: gridPoint x y: gridPoint y.
				consumedPacket := true ].
		pendingMarkClick := nil ].
