events
handleMouseUp: aPoint
    (self containsPoint: aPoint) ifTrue: [
        targetLabel text: 'Pressed'.
        Transcript show: 'Button pressed, text updated.'; cr.
    ]