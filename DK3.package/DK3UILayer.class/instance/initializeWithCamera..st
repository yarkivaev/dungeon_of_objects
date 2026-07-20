inizialization
initializeWithCamera: aCamera
    super initializeWithCamera: aCamera.
    layerName := 'UI Layer'.
    panel := GamePanel new.
    panel position: 10 @ 10.