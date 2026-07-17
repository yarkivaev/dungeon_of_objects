packet handling
forwardPacket: anInputFrame
    nextLayer ifNotNil: [
        ^ nextLayer handlePacket: anInputFrame.
    ].
    ^ false