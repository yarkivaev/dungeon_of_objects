as yet unclassified
create: user
	| room |
	room := self new.
	user getGold >= (room price) ifTrue: [
		user goldDiscard: (room price).
		^ room.
	].
	