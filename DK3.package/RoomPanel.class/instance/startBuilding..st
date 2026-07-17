as yet unclassified
startBuilding: roomType
	roomShadow := Smalltalk at: (roomType , 'Room') asSymbol.
	roomShadow := roomShadow new.
	
	Transcript show: 'aaa'.