running
start: aCreatures
    world := GameUpdate new creatures: aCreatures.
    timer := Timer new.
    timer setWorld: world setGame: self.
    timer start.

    audio := GameAudioController new.
    audio playBackgroundMusic: 'soundtrack.wav'.