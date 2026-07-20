opening
open
    | canvas |
    canvas := DK3GameCanvas new start: creatures.
    self renderer: canvas.
    canvas openInWindow.
    self start.
    ^ self