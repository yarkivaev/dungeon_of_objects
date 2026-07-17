as yet unclassified
create: aPlayer
	| room |
	
	globalId ifNil: [
		globalId := 0.	
	].

	roomsDict ifNil: [
		roomsDict := Rooms new.	
	].

	room := self new.
	
	aPlayer getGold >= room getPrice ifTrue: [
		room setUser: aPlayer.
		aPlayer goldDiscard: room getPrice.
		
		roomsDict add: room id: globalId.
		aPlayer addRoom: room id: globalId.
		
		globalId := globalId + 1.
		
		^room.
	].

	
