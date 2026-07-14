as yet unclassified
decideAction: worldCreatures

	| enemies |
	enemies := worldCreatures select: [ :each | (each team ~= self team) and: [ each health > 0 ] ].
	
	enemies isEmpty ifFalse: [ 
		^ FleeAction actor: self 
	].

	^ WorkAction actor: self workType: self findWork
