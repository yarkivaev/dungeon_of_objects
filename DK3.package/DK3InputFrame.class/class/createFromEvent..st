instance creaction
createFromEvent: anEvent
    | frame |
    frame := self new initialize.
    anEvent ifNil: [ ^ frame ].
    
    frame mousePosition: anEvent cursorPoint.
    
    (anEvent isKindOf: MouseButtonEvent) 
        ifTrue: [
            frame mouseButtons: anEvent whichButton.
            frame mouseScroll: 0.
        ]
        ifFalse: [
            frame mouseButtons: #none.
            (anEvent isKindOf: MouseWheelEvent) 
                ifTrue: [ frame mouseScroll: anEvent wheelDelta ]
                ifFalse: [ frame mouseScroll: 0 ].
        ].
    ^ frame