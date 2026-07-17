running
start
    | dt |
    world := GameUpdate new.
    timer := Timer new.
    timer setWorld: world setGame: self.
    "timer start."
    
    isRunning := true.
    
    [
        [ isRunning ] whileTrue: [
            dt := timer calculateDeltaTime.
            world update: dt.
            

            renderer ifNotNil: [
                renderer updateWorld: world.
            ].
            
            (Delay forSeconds: 0.016) wait.
        ].
    ] fork.
