event handling
mouseWheel: anEvent
    self processInputFrame: (DK3InputFrame createFromEvent: anEvent).
