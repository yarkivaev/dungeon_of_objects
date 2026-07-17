steping
step
    | currentTime deltaTime |
    currentTime := Time millisecondClockValue.
    deltaTime := (currentTime - lastTickTime) / 1000.0.
    lastTickTime := currentTime.
    
    camera update: deltaTime.
    layers do: [ :layer | layer update: deltaTime ].
    self changed.
