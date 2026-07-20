packet handling
shouldHandlePacket: anInputFrame
    "Обрабатываем пакет только если клик попал в область UI"
    uiBounds ifNil: [ ^ false ].
    ^ anInputFrame isMousePressed 
        and: [ uiBounds containsPoint: anInputFrame mousePosition ].