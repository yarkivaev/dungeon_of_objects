as yet unclassified
gainLevel: anInteger

	| oldLevel levelsGained |
	oldLevel := level.

	level := (level + anInteger) min: 10.
	
	levelsGained := level - oldLevel.
	
	levelsGained > 0 ifTrue: [
		attack := attack + (levelsGained * 5).
		health := health + (levelsGained * 10).
		
		Transcript show: (self class name asString, ' gained ', levelsGained asString, ' levels. Attack +', (levelsGained * 5) asString, ', HP +', (levelsGained * 10) asString); cr
	]