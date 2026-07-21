as yet unclassified
testPixelExtentMatchesTileGrid
    | map |
    map := Map initializeWidth: 7 height: 13.
    self
        assert: map pixelExtent
        equals: 112 @ 208
        description: 'map pixel extent did not match width and height times tile size'
