as yet unclassified
testReplaceWithUpdatesGridCell
    | map oldTile newTile |
    map := Map initializeWidth: 4 height: 4.
    oldTile := FloorTile new setMap: map x: 2 y: 3.
    map atX: 2 y: 3 put: oldTile.
    newTile := oldTile replaceWith: ClaimedFloorTile.
    self
        assert: (map atX: 2 y: 3) == newTile
        description: 'replaceWith did not store the new tile in the map grid'
