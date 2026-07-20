opening
open
    | canvas |
    canvas := DK3GameCanvas new start: creatures with: rooms.
    self renderer: canvas.
    canvas openInWindow.
    self start: creatures.
    ^ self