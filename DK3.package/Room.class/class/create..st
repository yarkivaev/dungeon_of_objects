as yet unclassified
create: aPlayer
	| room |

	room := self new.
	
	aPlayer getGold >= room getPrice ifTrue: [
		room setUser: aPlayer.
		aPlayer goldDiscard: room getPrice.
		
		rooms add: room id: globalId id.
		aPlayer addRoom: room id: globalId id.
		
		globalId next.
		
		^room.
	].

	
