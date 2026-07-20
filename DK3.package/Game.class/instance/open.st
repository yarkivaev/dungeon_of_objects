opening
open 
    | canvas |

    canvas := DK3GameCanvas new.
    self renderer: canvas.
    canvas openInWindow.

    world := GameUpdate new.

    worldMap := Map initializeWidth: 1600 height: 1600.

    timer := Timer new.
    timer setWorld: world setGame: self.
    timer start.  
    ^ self