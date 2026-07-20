event handling
mouseDown: anEvent
    anEvent hand newKeyboardFocus: self.
    startDragPoint := anEvent cursorPoint.
    startCameraPosition := camera position.
    self processInputFrame: (DK3InputFrame createFromEvent: anEvent).
    self changed.
