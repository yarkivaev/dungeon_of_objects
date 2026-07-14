as yet unclassified
create: user
	| room |
	room := self new.
	user getGold >= room getPrice ifTrue: [
		user goldDiscard: room getPrice.
		^ room.
	].
	