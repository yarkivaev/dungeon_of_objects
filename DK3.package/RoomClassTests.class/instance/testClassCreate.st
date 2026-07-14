as yet unclassified
testClassCreate
	user := User new.
	room := Room create: user.
	
	self assert: room getPrice = 0.
	self assert: room getType = ''.
	self assert: room getUser = user.
