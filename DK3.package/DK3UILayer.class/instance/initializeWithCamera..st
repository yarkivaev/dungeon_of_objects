inizialization
initializeWithCamera: aCamera
    super initializeWithCamera: aCamera.
    layerName := 'UI Layer'.
    
    panel := GamePanel new.
    panel initializePath: path.
    panel color: Color transparent. 
    panel borderWidth: 0.
