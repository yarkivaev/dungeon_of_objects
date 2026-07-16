initialize-release
findPatient: worldCreatures

	| enemies allies |
	enemies := worldCreatures select: [ :each | 
		(each team ~= self team) and: [ each health < 100 and: [ each health > 0 ] ] ].
	enemies isEmpty ifFalse: [ ^ enemies ].

	allies := worldCreatures select: [ :each | 
		(each team = self team) and: [ each ~= self and: [ each health < 100 and: [ each health > 0 ] ] ] ].
	^ allies