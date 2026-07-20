packet handling
processPacket: anInputFrame
    | clickPos |
    clickPos := anInputFrame mousePosition.
    
    (panel containsPoint: clickPos) ifTrue: [
        panel handleMouseUp: clickPos.
    ].