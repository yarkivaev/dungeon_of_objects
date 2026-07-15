as yet unclassified
testSettersWork
	user := User new.
	rooms := Rooms new.
	creatures := Creatures new.
	
	user goldAdd: 1000.
	self assert: user getGold = 2000.
	
	user goldDiscard: 500.
	self assert: user getGold = 1500.
	
	user maxGoldAdd: 1500.
	self assert: user getMaxGold = 4500.
	
	user maxGoldDiscard: 1000.
	self assert: user getMaxGold = 3500.
	
	user foodAdd: 5.
	self assert: user getFood = 15.
	
	user foodDiscard: 10.
	self assert: user getFood = 5.
	
	user setRooms: rooms.
	self assert: user getRooms = rooms.
	
	user setCreatures: creatures.
	self assert: user getCreatures = creatures.