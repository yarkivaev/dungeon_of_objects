helperMethods
step
    | dt |
    dt := self calculateDeltaTime.
    world update: dt.
    game renderer updateWorld: world.