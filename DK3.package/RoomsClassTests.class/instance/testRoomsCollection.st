as yet unclassified
testRoomsCollection

	rooms := Rooms new.
	
	user := User new.
	room := Room create: user.
	
	rooms add: room id: room getId.
	
	self assert: rooms getDict size = 1.
	
	rooms remove: room getId.
	
	self assert: rooms getDict size = 0.