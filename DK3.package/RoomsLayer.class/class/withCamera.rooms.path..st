as yet unclassified
withCamera: aCamera rooms: roomsDict path: globalPath
    | instance |
    instance := self new.

    instance setRooms: roomsDict.
    instance globalPath: globalPath.
    instance initializeWithCamera: aCamera.
	
    ^ instance