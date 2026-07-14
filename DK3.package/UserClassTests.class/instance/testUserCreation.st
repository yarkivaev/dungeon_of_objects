as yet unclassified
testUserCreation
	user := User new.
	
	self assert: user getGold = 1000.
	self assert: user getMaxGold = 3000.
	self assert: user getFood = 10.
	