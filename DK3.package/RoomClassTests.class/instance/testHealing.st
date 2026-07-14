as yet unclassified
testHealing
	user := User new.
	room := Room create: user.
	
	room setMaxHp: 100.
	room setHp: 20.
	
	room heal: 30.
	
	self assert: room getHp = 50.