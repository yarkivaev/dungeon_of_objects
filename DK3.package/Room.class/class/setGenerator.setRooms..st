as yet unclassified
setGenerator: idGen setRooms: roomsDict
	globalId := idGen.
	rooms := roomsDict.
	self subclassesDo: [ :cls |
		cls setGenerator: idGen setRooms: roomsDict ].
