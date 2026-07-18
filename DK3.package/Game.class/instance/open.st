opening
open
 
    | canvas |
    canvas := DK3GameCanvas new.
    self renderer: canvas.
    canvas openInWindow.
    self start.
    ^ self