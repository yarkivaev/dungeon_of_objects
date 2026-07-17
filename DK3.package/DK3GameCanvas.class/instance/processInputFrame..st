private
processInputFrame: anInputFrame
    layers reverseDo: [ :layer |
        (layer handlePacket: anInputFrame) ifTrue: [ ^ self ]
    ].