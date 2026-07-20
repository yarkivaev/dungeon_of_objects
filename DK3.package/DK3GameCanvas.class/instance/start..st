inizialization
start: creatures
    super initialize.
    self extent: 800 @ 600.
    self clipSubmorphs: true.
    
    camera := DK3CameraViewport new.
    camera position: 0 @ 0.
    camera zoom: 1.0.
    camera worldExtent: 1600 @ 1600.

    world := GameUpdate new. 
    ObjectInterface setWorld: world.
    
    layers := OrderedCollection new.
    layers add: (DK3RenderLayer withCamera: camera canvas: self tileSize: 60 gridSize: 10 @ 10).
    layers add: (RoomsLayer withCamera: camera canvas: self).
    layers add: (DK3EntitiesLayer withCamera: camera creatures: creatures).
    layers add: (DK3UILayer withCamera: camera canvas: self).
    
    self linkLayers.