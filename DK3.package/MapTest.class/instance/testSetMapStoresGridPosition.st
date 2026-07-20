as yet unclassified
testSetMapStoresGridPosition
    | map tile |
    map := Map initializeWidth: 3 height: 3.
    tile := FloorTile new setMap: map x: 2 y: 3.
    self
        assert: tile position
        equals: 2 @ 3
        description: 'tile did not store grid position from setMap'
