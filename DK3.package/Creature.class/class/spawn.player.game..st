as yet unclassified
spawn: aPosition player: aPlayer game: aGame
	| creature |
	
	creature := self new.
	
	creature setPlayer: aPlayer.
	creature position: aPosition.
	creature game: aGame.
	
	creatures add: creature id: (globalId id).
	aPlayer addCreature: creature id: globalId id.
		
	globalId next.
		
	^ creature.

