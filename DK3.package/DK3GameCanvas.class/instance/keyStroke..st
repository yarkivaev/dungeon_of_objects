event handling
keyStroke: anEvent
    | keys |
    keys := #($1 $2 $3 $4 $5).
    (keys includes: anEvent keyCharacter) ifTrue: [
        camera level: (keys indexOf: anEvent keyCharacter).
        camera clampPositionInExtent: self innerBounds extent.
        self changed ].
    self processInputFrame: (DK3InputFrame createFromEvent: anEvent).
