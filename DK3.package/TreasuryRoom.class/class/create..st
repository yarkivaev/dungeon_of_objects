as yet unclassified
create: aPlayer
	| room |
	room := self new.
	
	globalId ifNil: [
		globalId := 0.	
	].

	roomsDict ifNil: [
		roomsDict := Rooms new.	
	].
	
	aPlayer getGold >= room getPrice ifTrue: [
		room setUser: aPlayer.
		aPlayer goldDiscard: room getPrice.
		
		globalId := globalId + 1.
		
		roomsDict add: room id: globalId.
		aPlayer addRoom: room id: globalId.
		
		aPlayer maxGoldAdd: 1500.
		
		^room.
	].

	
