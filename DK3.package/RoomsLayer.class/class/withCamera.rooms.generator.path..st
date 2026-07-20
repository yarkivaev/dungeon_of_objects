as yet unclassified
withCamera: aCamera rooms: roomsDict generator: idGen path: globalPath
    | instance |
    instance := self new.

    instance setGenerator: idGen setRooms: roomsDict.
    instance globalPath: globalPath.
    instance initializeWithCamera: aCamera.
	
    ^ instance