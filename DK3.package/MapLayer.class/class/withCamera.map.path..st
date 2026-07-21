as yet unclassified
withCamera: aCamera map: aMap path: globalPath
    | instance |
    instance := self new.

    instance setMap: aMap.
    instance globalPath: globalPath.
    instance initializeWithCamera: aCamera.
	
    ^ instance