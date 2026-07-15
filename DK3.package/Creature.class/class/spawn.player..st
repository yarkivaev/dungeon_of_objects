as yet unclassified
spawn: aPosition player: aPlayer
	globalId := globalId + 1.
	^self new
		position: aPosition;
		player: aPlayer