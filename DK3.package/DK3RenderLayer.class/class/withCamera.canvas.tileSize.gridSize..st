accesinstance creation
withCamera: aCamera canvas: aCanvas tileSize: aNumber gridSize: aPoint
    | instance |
    instance := self new.

    instance initializeWithCamera: aCamera.
    instance canvas: aCanvas.
    instance tileSize: aNumber.
    instance gridSize: aPoint.
	
    ^ instance