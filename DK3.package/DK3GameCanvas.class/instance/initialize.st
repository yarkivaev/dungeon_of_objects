inizialization
initialize
    super initialize.
    self extent: 800 @ 600.
    
    camera := DK3CameraViewport new.
    camera position: 0 @ 0.
    camera zoom: 1.0.
    camera worldExtent: 1600 @ 1600.
    
    layers := OrderedCollection new.
    layers add: (DK3RenderLayer withCamera: camera tileSize: 60 gridSize: 10 @ 10).
    layers add: (DK3UILayer withCamera: camera).
    layers add: (RoomsLayer withCamera: camera).
    
    self linkLayers.
    lastTickTime := Time millisecondClockValue.
    self startStepping.