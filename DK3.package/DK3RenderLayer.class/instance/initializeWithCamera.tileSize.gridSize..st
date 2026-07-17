inizialization
initializeWithCamera: aCamera tileSize: aNumber gridSize: aPoint
    super initializeWithCamera: aCamera.
    tileSize := aNumber.
    gridSize := aPoint.
    layerName := 'Render Layer'.