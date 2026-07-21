running
start: aCreatures
    world := GameUpdate new creatures: aCreatures.
    timer := Timer new.
    timer setWorld: world setGame: self. 
    timer start.

    audio := GameAudioController addPath: path.
    audio playBackgroundMusic: 'soundtrack.wav'.
