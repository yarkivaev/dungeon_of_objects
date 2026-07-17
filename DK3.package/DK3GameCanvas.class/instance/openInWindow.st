opening
openInWindow
    | window |
    window := SystemWindow new.
    window setLabel: 'DDK3'.
    window addMorph: self frame: (0 @ 0 extent: 1 @ 1).
    window extent: 800 @ 600.
    window openInWorld.
    ^ window