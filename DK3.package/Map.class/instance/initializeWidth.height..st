as yet unclassified
initializeWidth: aWidth height: aHeight
   
    width := aWidth.
    height := aHeight.
    grid := Array new: aHeight.

    randomTilesArray := #('Earth' 'Earth' 'Earth' 'Earth' 'Gold').
    firstRandomXSpawn := (5 to: 20) atRandom.
    firstRandomYSpawn := (5 to: 20) atRandom.

    secondRandomXSpawn := (25 to: 40) atRandom.
    secondRandomYSpawn := (25 to: 40) atRandom.
    
    1 to: aHeight do: [ :row |
        grid at: row put: (Array new: aWidth).
        1 to: aWidth do: [ :col |
		currentTile := randomTilesArray atRandom.
		
		currentTile = 'Earth' ifTrue: [
                (grid at: row) at: col put: (EarthTile new setMap: self x: col y: row)
		].
	
		currentTile = 'Gold' ifTrue: [
                (grid at: row) at: col put: (GoldTile new setMap: self x: col y: row)
		].
		 
		((((row > firstRandomYSpawn) 
			and: [row - 5 <= firstRandomYSpawn])
			and: [col > firstRandomXSpawn])
			and: [col - 5 <= firstRandomXSpawn]) ifTrue: [
			(grid at: row) at: col put: (FloorTile new setMap: self x: col y: row).
			
			(row = (firstRandomXSpawn + 2) and: [col = (firstRandomYSpawn + 2)]) ifTrue: [
				HeartRoom create: User new.
			].
		].
	
		((((row > secondRandomYSpawn) 
			and: [row - 5 <= secondRandomYSpawn])
			and: [col > secondRandomXSpawn])
			and: [col - 5 <= secondRandomXSpawn]) ifTrue: [
			(grid at: row) at: col put: (FloorTile new setMap: self x: col y: row).
			
			(row = (secondRandomXSpawn + 2) and: [col = (secondRandomYSpawn + 2)]) ifTrue: [
				HeartRoom create: User new.
			].
		].
        ]
    ].