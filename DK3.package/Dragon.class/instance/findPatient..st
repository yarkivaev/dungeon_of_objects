initialize-release
findPatient: worldCreatures
	^ worldCreatures select: [ :each | 
		(each team = self team) and: [ each health < 100 and: [ each health > 0 ] ] ]