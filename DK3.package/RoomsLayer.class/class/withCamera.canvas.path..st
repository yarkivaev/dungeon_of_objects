as yet unclassified
withCamera: aCamera canvas: aCanvas path: globalPath
    | instance |
    instance := self new.

    instance initializeWithCamera: aCamera.
    instance canvas: aCanvas.
    instance globalPath: globalPath.
	
    ^ instance