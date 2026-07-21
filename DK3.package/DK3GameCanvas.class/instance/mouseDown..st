event handling
mouseDown: anEvent
    | frame click |
    anEvent hand newKeyboardFocus: self.
    startDragPoint := anEvent cursorPoint.
    startCameraPosition := camera position.
    frame := DK3InputFrame createFromEvent: anEvent.
    click := anEvent position.
    click ifNil: [ click := anEvent cursorPoint - self position ].
    frame mousePosition: click.
    self processInputFrame: frame.
    self changed.
