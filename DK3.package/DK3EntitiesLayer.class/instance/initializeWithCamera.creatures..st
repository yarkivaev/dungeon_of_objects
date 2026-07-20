inizialization
initializeWithCamera: aCamera creatures: aCreatures
    super initializeWithCamera: aCamera.
    layerName := 'UI Layer'.
    creatures := aCreatures.
    uiBounds := 10 @ 10 extent: 220 @ 120.