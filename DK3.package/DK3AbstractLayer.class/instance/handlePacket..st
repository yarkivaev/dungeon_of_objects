packet handling
handlePacket: anInputFrame
    isActive ifFalse: [ 
        ^ self forwardPacket: anInputFrame.
    ].
    
    (self shouldHandlePacket: anInputFrame) ifTrue: [
        self processPacket: anInputFrame.
        (self canConsumePacket: anInputFrame) ifTrue: [
            ^ true.
        ].
    ].
    ^ self forwardPacket: anInputFrame.