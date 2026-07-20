inizialization
start: creatures with: rooms map: worldMap creaturesGenerator: creaturesGen roomsGenerator: roomsGen
    super initialize.
    self extent: 800 @ 600.
    self clipSubmorphs: true.
    
    camera := DK3CameraViewport new.
    camera position: 0 @ 0.
    camera zoom: 16.0.
    camera worldExtent: 1600 @ 1600.

    globalPath :=  SquotWorkingCopy allInstances first repository gitRepository baseDir parent.
    
    layers := OrderedCollection new.
    layers add: (DK3RenderLayer withCamera: camera tileSize: 60 gridSize: 10 @ 10).
    layers add: (MapLayer withCamera: camera map: worldMap path: globalPath).
    layers add: (RoomsLayer withCamera: camera rooms: rooms generator: roomsGen path: globalPath).
    layers add: (DK3EntitiesLayer withCamera: camera creatures: creatures path: globalPath).
    layers add: (DK3UILayer withCamera: camera path: globalPath).
    
    self linkLayers.
