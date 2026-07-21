as yet unclassified
initializeWidth: aWidth height: aHeight player: aPlayer
    width := aWidth.
    height := aHeight.
    marks := Set new.
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
			(row = (firstRandomYSpawn + 2) and: [col = (firstRandomXSpawn + 2)]) ifTrue: [
				(HeartRoom create: aPlayer) setPosition: col @ row.
			].
		].
		((((row > secondRandomYSpawn) 
			and: [row - 5 <= secondRandomYSpawn])
			and: [col > secondRandomXSpawn])
			and: [col - 5 <= secondRandomXSpawn]) ifTrue: [
			(grid at: row) at: col put: (FloorTile new setMap: self x: col y: row).
			(row = (secondRandomYSpawn + 2) and: [col = (secondRandomXSpawn + 2)]) ifTrue: [
				(HeartRoom create: aPlayer) setPosition: col @ row.
				Transcript show: HeartRoom globalId.
			].
		].
        ]
    ].
    1 to: aHeight do: [ :row |
        1 to: aWidth do: [ :col |
            (row = 1 or: [ row = aHeight or: [ col = 1 or: [ col = aWidth ] ] ]) ifTrue: [
                (grid at: row) at: col put: (BedrockTile new setMap: self x: col y: row) ] ] ].
