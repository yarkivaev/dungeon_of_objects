packet handling
processPacket: anInputFrame
    | clickPos btnRect |
    clickPos := anInputFrame mousePosition.
    btnRect := (uiBounds origin + (15 @ 70)) extent: 100 @ 30.
    
    (btnRect containsPoint: clickPos) ifTrue: [
        gamePanel createCreature.
        self changed. 
    ].