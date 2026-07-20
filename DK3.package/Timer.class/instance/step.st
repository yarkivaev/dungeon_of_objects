helperMethods
step
    | dt |
    dt := self calculateDeltaTime.
    world update: dt.
    
    game renderer ifNotNil: [
        game renderer updateWorld: world.
    ].
