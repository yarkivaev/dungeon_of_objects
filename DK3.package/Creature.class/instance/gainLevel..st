as yet unclassified
gainLevel: anInteger

	| oldLevel levelsGained |
	oldLevel := level.

	level := (level + anInteger) min: 10.
	
	levelsGained := level - oldLevel.
	
	levelsGained > 0 ifTrue: [
		attack := attack + (levelsGained * 5).
		health := health + (levelsGained * 10).
		
		self game ifNotNil: [
			self game addEvent: (Dictionary new
				at: #type put: #levelUp;
				at: #tick put: self game getTimer;
				at: #position put: (self position ifNotNil: [ self position copy ] ifNil: [ 0@0 ]);
				at: #actor put: self;
				at: #oldLevel put: oldLevel;
				at: #newLevel put: level;
				yourself)
		]
	]
