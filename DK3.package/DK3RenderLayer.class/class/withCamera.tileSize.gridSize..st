accesinstance creation
withCamera: aCamera tileSize: aNumber gridSize: aPoint
    | instance |
    instance := self new.

    instance initializeWithCamera: aCamera.
    instance tileSize: aNumber.
    instance gridSize: aPoint.
	
    ^ instance