packet handling
processPacket: anInputFrame
    | clickPos |
    clickPos := anInputFrame mousePosition.
    (panel bounds containsPoint: clickPos) ifTrue: [
        panel handleMouseUp: clickPos.
    ].
