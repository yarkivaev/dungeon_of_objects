as yet unclassified
testLevelSelectsDiscreteZoom
    | camera |
    camera := DK3CameraViewport new.
    camera worldExtent: 800 @ 800.
    camera level: 4.
    self
        assert: camera zoom
        equals: 16.0
        description: 'zoom level 4 was not 16'
