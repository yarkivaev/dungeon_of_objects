initialize-release
initialize
    | goblin monk builder |
    super initialize.
    isRunning := false.
    renderer := nil.
    audio := GameAudioController new.

    builder := Builder new.
    builder position: (3@5).
    monk := Monk new.
    monk position: (5@10).
    goblin := Goblin new.
    goblin position: (1@1).
    creatures := Creatures new.
    creatures add: goblin id: 1.
    creatures add: monk id: 2.
    creatures add: builder id: 3.
