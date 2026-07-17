as yet unclassified
initializeWidth: aWidth height: aHeight
   
    width := aWidth.
    height := aHeight.
    grid := Array new: aHeight.
    tilesRandomArray := #('Gold' 'Earth' 'Earth' 'Earth').
    
    1 to: aHeight do: [ :row |
        grid at: row put: (Array new: aWidth).
        1 to: aWidth do: [ :col |
		currentTile := tilesRandomArray atRandom.
		
		currentTile = 'Earth' ifTrue: [
                (grid at: row) at: col put: (EarthTile new setMap: self x: col y: row).
		].
	
		currentTile = 'Gold' ifTrue: [
		    (grid at: row) at: col put: (GoldTile new setMap: self x: col y: row).
		]
        ]
    ].