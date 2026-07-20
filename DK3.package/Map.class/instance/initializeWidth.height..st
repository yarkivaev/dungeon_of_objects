as yet unclassified
initializeWidth: aWidth height: aHeight
   
    width := aWidth.
    height := aHeight.
    grid := Array new: aHeight.
    
    1 to: aHeight do: [ :row |
        grid at: row put: (Array new: aWidth).
        1 to: aWidth do: [ :col |
            (grid at: row) at: col put: (EarthTile new setMap: self x: col * 16 y: row * 16 width: 16 height: 16)
        ]
    ].