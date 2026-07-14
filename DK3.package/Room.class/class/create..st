as yet unclassified
create: user
	| room |
	room := self new.
	user getGold >= room getPrice ifTrue: [
		room setUser: user.
		user goldDiscard: room getPrice.
		
		^room.
	].

	