inizialization
initializeWithCamera: aCamera creatures: aCreatures globalPath: aPath
    super initializeWithCamera: aCamera.
    layerName := 'UI Layer'.
    creatures := aCreatures.
    uiBounds := 10 @ 10 extent: 220 @ 120.
    path := aPath.

    creatures getDict valuesDo: [ :creature |
        creature setPath: aPath.
        creature setMorph.
    ]