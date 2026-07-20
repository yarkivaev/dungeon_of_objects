inizialization
initialize
    super initialize.
    self extent: 800 @ 600.
    self clipSubmorphs: true.
    
    camera := DK3CameraViewport new.
    camera position: 0 @ 0.
    camera zoom: 1.0.
    camera worldExtent: 1600 @ 1600.

    globalPath := '/home/andrew/DungeonKeepers/dungeon_of_objects'.

    world := GameUpdate new. 
    ObjectInterface setWorld: world.
    "timer := Timer new.
    timer setWorld: world setGame: self.
    timer start."
    
    layers := OrderedCollection new.
    layers add: (DK3RenderLayer withCamera: camera canvas: self tileSize: 60 gridSize: 10 @ 10).
    layers add: (RoomsLayer withCamera: camera canvas: self globalPath: globalPath).
    layers add: (DK3UILayer withCamera: camera canvas: self).
    
    self linkLayers.