as yet unclassified
handleMouseUp: aPoint
    (self containsPoint: aPoint) ifTrue: [
        Transcript show: 'The button has been pressed'; cr.
    ]