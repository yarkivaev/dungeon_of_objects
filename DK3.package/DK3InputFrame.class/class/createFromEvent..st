instance creaction
createFromEvent: anEvent
    | frame |
    frame := self new initialize.
    anEvent ifNil: [ ^ frame ].
    frame mousePosition: anEvent cursorPoint.
    (anEvent isKindOf: MouseButtonEvent) ifTrue: [
        frame mouseButtons: anEvent whichButton.
        frame mouseScroll: 0.
        anEvent isMouseDown ifTrue: [ frame mousePhase: #down ].
        anEvent isMouseUp ifTrue: [ frame mousePhase: #up ].
    ] ifFalse: [
        frame mouseButtons: #none.
        frame mousePhase: #none.
        (anEvent isKindOf: MouseWheelEvent)
            ifTrue: [ frame mouseScroll: anEvent wheelDelta ]
            ifFalse: [ frame mouseScroll: 0 ].
    ].
    ^ frame
