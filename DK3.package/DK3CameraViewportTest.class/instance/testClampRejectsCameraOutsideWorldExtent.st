as yet unclassified
testClampRejectsCameraOutsideWorldExtent
    | camera |
    camera := DK3CameraViewport new.
    camera worldExtent: 800 @ 800.
    camera zoom: 1.0.
    camera position: 900 @ -900.
    camera clampPositionInExtent: 200 @ 200.
    self
        assert: camera position
        equals: 300 @ -300
        description: 'camera was not clamped inside map world extent'
