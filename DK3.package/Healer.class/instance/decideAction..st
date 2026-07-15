as yet unclassified
decideAction: worldCreatures

	| patients sortedPatients nearestPatient |
	patients := self findPatient: worldCreatures.
	
	patients isEmpty ifFalse: [ 
		sortedPatients := patients sorted: [ :a :b | 
			(self distanceTo: a) < (self distanceTo: b) ].
		
		nearestPatient := sortedPatients first.
		^ HealAction actor: self patient: nearestPatient
	].

	^ IdleAction actor: self
