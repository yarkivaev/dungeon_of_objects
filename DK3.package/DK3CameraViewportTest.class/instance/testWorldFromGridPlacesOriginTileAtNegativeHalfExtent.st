as yet unclassified
testWorldFromGridPlacesOriginTileAtNegativeHalfExtent
    | camera |
    camera := DK3CameraViewport new.
    camera worldExtent: 800 @ 800.
    self
        assert: (camera worldFromGrid: 1 @ 1)
        equals: -400 @ -400
        description: 'grid origin was not centered at negative half world extent'
