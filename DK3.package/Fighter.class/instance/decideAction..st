as yet unclassified
decideAction: worldCreatures

	| enemies |
	enemies := worldCreatures select: [ :each | (each team ~= self team) and: [ each health > 0 ] ].
	
	enemies isEmpty ifFalse: [ 
		^ AttackAction actor: self target: enemies first
	].

	^ IdleAction actor: self