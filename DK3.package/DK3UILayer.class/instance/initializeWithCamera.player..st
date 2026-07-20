inizialization
initializeWithCamera: aCamera player: aPlayer
    super initializeWithCamera: aCamera.
    layerName := 'UI Layer'.
    panel := GamePanel new.
    panel initializePath: path player: aPlayer.
    panel color: Color transparent.
    panel borderWidth: 0.
