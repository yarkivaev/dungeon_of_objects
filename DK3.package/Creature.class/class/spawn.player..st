as yet unclassified
spawn: aPosition player: aPlayer	
	| creature |
	
	globalId ifNil: [
		globalId := 0.	
	].

	creaturesDict ifNil: [
		creaturesDict := Creatures new.
	].

	creature := self new.
	creature setPlayer: aPlayer.
	
	aPlayer addCreature: creature id: globalId.
	self addCreature: creature id: globalId.
	
      globalId := globalId + 1.

	^creature
		position: aPosition
		