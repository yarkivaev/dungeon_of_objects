event handling
mouseUp: anEvent
    | frame click |
    frame := DK3InputFrame createFromEvent: anEvent.
    click := anEvent position.
    click ifNil: [ click := anEvent cursorPoint - self position ].
    frame mousePosition: click.
    self processInputFrame: frame.
    self changed.
