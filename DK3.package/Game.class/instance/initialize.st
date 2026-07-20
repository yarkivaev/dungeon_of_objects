initialize-release
initialize
    | carrier |
    super initialize.
    isRunning := false.
    renderer := nil.
    audio := GameAudioController new.

    carrier := Builder new.
    carrier position: (3@5).
    creatures := Creatures new.
    creatures add: carrier id: 1.