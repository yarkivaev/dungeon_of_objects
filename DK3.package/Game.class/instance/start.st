as yet unclassified
start
    isRunning := true.
    world := ObjectInterface new. 
    timer := Timer new.
    timer setWorld: world setGame: self.
    timer start.
    audio playBackgroundMusic: 'sounds/soundtrack.wav'.