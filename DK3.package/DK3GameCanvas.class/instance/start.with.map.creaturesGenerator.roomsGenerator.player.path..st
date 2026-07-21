inizialization
start: creatures with: rooms map: worldMap creaturesGenerator: creaturesGen roomsGenerator: roomsGen player: aPlayer path: aPath
    super initialize.
    self extent: 800 @ 600.
    self clipSubmorphs: true.

    camera := DK3CameraViewport new.
    camera position: 0 @ 0.
    camera level: 1.
    camera worldExtent: worldMap pixelExtent.

    globalPath := aPath.

    layers := OrderedCollection new.
    layers add: (DK3RenderLayer withCamera: camera tileSize: 60 gridSize: 10 @ 10).
    layers add: (MapLayer withCamera: camera map: worldMap path: globalPath).
    layers add: (RoomsLayer withCamera: camera rooms: rooms generator: roomsGen path: globalPath).
    layers add: (DK3EntitiesLayer withCamera: camera creatures: creatures path: globalPath).
    layers add: (DK3UILayer withCamera: camera path: globalPath player: aPlayer).
    self linkLayers.
