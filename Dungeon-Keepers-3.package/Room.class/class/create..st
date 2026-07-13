as yet unclassified
create: user
	| room |
	room := self new.
	user getGold >= (room price) ifTrue: [		
		globalId := globalId + 1.
		
		user goldDiscard: (room price).
		user addRoom: room id: globalId.
		
		^room.
	].
	