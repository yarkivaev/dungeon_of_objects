as yet unclassified
spawn: aPosition player: aPlayer
	| creature nextId |
	creature := self new.
	creature setPlayer: aPlayer.
	nextId := Creature takeId.
	aPlayer addCreature: creature id: nextId.
	Creature addCreature: creature id: nextId.
	^ creature position: aPosition
