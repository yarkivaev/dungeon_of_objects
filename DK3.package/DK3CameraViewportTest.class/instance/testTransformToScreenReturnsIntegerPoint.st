as yet unclassified
testTransformToScreenReturnsIntegerPoint
    | camera point |
    camera := DK3CameraViewport new.
    camera worldExtent: 800 @ 800.
    camera zoom: 16.0.
    camera position: 0 @ 0.
    point := camera transformToScreen: (camera worldFromGrid: 1 @ 1) windowCenter: 400.5 @ 300.5.
    self
        assert: (point x isInteger and: [ point y isInteger ])
        description: 'screen point kept non-integer coordinates'
