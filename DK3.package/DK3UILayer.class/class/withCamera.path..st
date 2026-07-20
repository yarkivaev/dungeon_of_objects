instance creation
withCamera: aCamera path: globalPath
    | instance |
    instance := self new.

    instance globalPath: globalPath.
    instance initializeWithCamera: aCamera.
	
    ^ instance