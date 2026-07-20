event handling
mouseMove: anEvent
    | delta |
    anEvent anyButtonPressed ifFalse: [
        self processInputFrame: (DK3InputFrame createFromEvent: anEvent).
        ^ self
    ].
    delta := anEvent cursorPoint - startDragPoint.
    camera position: startCameraPosition - (delta / camera zoom).
    camera clampPositionInExtent: self innerBounds extent.
    self changed.
