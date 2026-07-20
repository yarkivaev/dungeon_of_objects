as yet unclassified
withCamera: aCamera canvas: aCanvas
    | instance |
    instance := self new.

    instance initializeWithCamera: aCamera.
    instance canvas: aCanvas.
	
    ^ instance