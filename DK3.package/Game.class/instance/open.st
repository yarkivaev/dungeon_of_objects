opening
open
    | canvas |
    canvas := DK3GameCanvas new
        start: creatures
        with: rooms
        map: map
        creaturesGenerator: creaturesIdGenerator
        roomsGenerator: roomsIdGenerator
        player: player.
    self renderer: canvas.
    canvas openInWindow.
    self start: creatures.
    ^ self
