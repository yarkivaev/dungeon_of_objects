as yet unclassified
handleMouseUp: aPoint
    myButton ifNotNil: [
        (myButton containsPoint: aPoint) ifTrue: [
            myButton doButtonAction.
        ].
    ].
    createRoomButton ifNotNil: [
        (createRoomButton containsPoint: aPoint) ifTrue: [
            self createRoom.
        ].
    ].
    self updateGoldLabel.
    self updateCreaturesInfo.