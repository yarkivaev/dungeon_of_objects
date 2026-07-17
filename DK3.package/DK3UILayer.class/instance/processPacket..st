packet handling
processPacket: anInputFrame
    | clickPos buttonBounds |
    clickPos := anInputFrame mousePosition.
    buttonBounds := 150 @ 80 extent: 60 @ 30.
    (buttonBounds containsPoint: clickPos) ifTrue: [
        Transcript show: 'Button clicked!'; cr.
    ].
    Transcript show: 'UI click at: ', clickPos asString; cr.