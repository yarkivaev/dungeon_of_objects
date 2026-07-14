as yet unclassified
testMaxGoldAdding
	
	user := User new.
	user goldAdd: 2500.
	room := TreasuryRoom create: user.
	
	self assert: user getMaxGold = 4500.