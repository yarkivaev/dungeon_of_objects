as yet unclassified
withCamera: aCamera canvas: aCanvas globalPath: path
    | instance |
    instance := self new.

    instance initializeWithCamera: aCamera.
    instance canvas: aCanvas.
    instance globalPath: path.
	
    ^ instance