instance creation
withCamera: aCamera canvas: aCanvas path: globalPath
    | instance |
    instance := self new.

    instance globalPath: globalPath.
    instance initializeWithCamera: aCamera.
    instance canvas: aCanvas.
	
    ^ instance