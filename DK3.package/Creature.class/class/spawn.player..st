as yet unclassified
spawn: aPosition player: aPlayer
	"comment stating purpose of message"
        globalId := globalId + 1.
	^self new
		position: aPosition;
		player: aPlayer
