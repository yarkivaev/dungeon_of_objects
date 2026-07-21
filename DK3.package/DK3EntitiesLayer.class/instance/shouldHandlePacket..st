packet handling
shouldHandlePacket: anInputFrame
    uiBounds ifNil: [ ^ false ].
    ^ anInputFrame isMousePressed 
        and: [ uiBounds containsPoint: anInputFrame mousePosition ].