event handling
mouseDown: anEvent
    startDragPoint := anEvent cursorPoint.
    startCameraPosition := camera position.
    self processInputFrame: (DK3InputFrame createFromEvent: anEvent).
    self changed.