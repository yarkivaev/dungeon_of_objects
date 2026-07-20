helperMethods
step
    | dt |
    dt := self calculateDeltaTime.
    world update: dt.